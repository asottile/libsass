#include <sass/context.h>
#include <iostream>

int main() {
    std::cout << "Making data context" << std::endl;
    struct Sass_Data_Context* context = sass_make_data_context(sass_copy_c_string(""));
    std::cout << "Compiling data context" << std::endl;
    sass_compile_data_context(context);
    std::cout << "Getting output context" << std::endl;
    struct Sass_Context* ctx = sass_data_context_get_context(context);
    std::cout << "Printing error status" << std::endl;
    std::cout << sass_context_get_error_status(ctx) << std::endl;
    std::cout << "Printing error message" << std::endl;
    std::cout << sass_context_get_error_message(ctx) << std::endl;
    sass_delete_data_context(context);

    return 0;
}