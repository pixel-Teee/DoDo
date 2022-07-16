#pragma once
#include <dodo.h>
#include <EntryPoint/EntryPoint.h>

#include "Application/Application.h"

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