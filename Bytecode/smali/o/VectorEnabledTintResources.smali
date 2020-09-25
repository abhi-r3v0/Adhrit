.class public final Lo/VectorEnabledTintResources;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "ONBOARDING_STYLE",
        "Lcom/dreamplug/androidapp/ui/main/OnboardingThemeStyle;",
        "getONBOARDING_STYLE",
        "()Lcom/dreamplug/androidapp/ui/main/OnboardingThemeStyle;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/shouldBeUsed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lo/shouldBeUsed;->onNavigationEvent:Lo/shouldBeUsed;

    sput-object v0, Lo/VectorEnabledTintResources;->ICustomTabsCallback:Lo/shouldBeUsed;

    return-void
.end method

.method public static final ICustomTabsCallback()Lo/shouldBeUsed;
    .locals 1

    .line 8
    sget-object v0, Lo/VectorEnabledTintResources;->ICustomTabsCallback:Lo/shouldBeUsed;

    return-object v0
.end method
