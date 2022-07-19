#pragma once

extern DoDo::Application* DoDo::CreateApplication();

int main()
{
    //std::cout << "Hello World!" << std::endl;

    auto app = DoDo::CreateApplication();

    delete app;
    
    std::cout << "Hello World!" << std::endl;
    return 0;
}