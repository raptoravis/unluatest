// Copyright Epic Games, Inc. All Rights Reserved.

#include "unluatestGameMode.h"
#include "unluatestCharacter.h"
#include "UObject/ConstructorHelpers.h"

AunluatestGameMode::AunluatestGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPersonCPP/Blueprints/ThirdPersonCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
}
