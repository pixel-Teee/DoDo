#pragma once
#include <dodo.h>
#include <DoDo/EntryPoint/EntryPoint.h>

namespace DoDo 
{
	class DoDoEditor : public Application
	{
	public:
		DoDoEditor();
		virtual ~DoDoEditor();
	};

	Application* CreateApplication()
	{
		return new DoDoEditor();
	}
}