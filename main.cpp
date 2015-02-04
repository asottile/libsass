#include "sass_context.h"
#include <iostream>


static union Sass_Value* custom_func(const union Sass_Value* args, void* cookie) {
	return sass_make_error("hello world");
}


int main() {
    struct Sass_Data_Context* context = sass_make_data_context("a { content: foo(); }");
    struct Sass_Options* options = sass_data_context_get_options(context);
    Sass_C_Function_List fn_list = sass_make_function_list(1);
    Sass_C_Function_Callback fn = sass_make_function("foo()", custom_func, NULL);
    sass_function_set_list_entry(fn_list, 0, fn);
    sass_option_set_c_functions(options, fn_list);
    sass_compile_data_context(context);
    struct Sass_Context* ctx = sass_data_context_get_context(context);
    std::cout << sass_context_get_error_status(ctx) << std::endl;
    std::cout << sass_context_get_error_message(ctx) << std::endl;
    sass_delete_data_context(context);

    return 0;
}
