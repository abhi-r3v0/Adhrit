.class public final Lo/onContentScrollStarted;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static extraCallback:Lo/createRadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/showForSystem;

    invoke-direct {v0}, Lo/showForSystem;-><init>()V

    sput-object v0, Lo/onContentScrollStarted;->extraCallback:Lo/createRadioButton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    .line 18
    sget-object v0, Lo/onContentScrollStarted;->extraCallback:Lo/createRadioButton;

    invoke-interface {v0, p0}, Lo/createRadioButton;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    .line 26
    sget-object v0, Lo/onContentScrollStarted;->extraCallback:Lo/createRadioButton;

    invoke-interface {v0, p0}, Lo/createRadioButton;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 34
    sget-object p0, Lo/onContentScrollStarted;->extraCallback:Lo/createRadioButton;

    invoke-interface {p0}, Lo/createRadioButton;->onPostMessage()V

    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 30
    sget-object v0, Lo/onContentScrollStarted;->extraCallback:Lo/createRadioButton;

    invoke-interface {v0, p0, p1}, Lo/createRadioButton;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
