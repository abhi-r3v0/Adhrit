.class public final Lo/requireArguments;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/requireArguments$onPostMessage;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field public asInterface:Ljava/lang/String;

.field public extraCallback:Ljava/lang/String;

.field public onMessageChannelReady:Z

.field public onNavigationEvent:Z

.field public onPostMessage:Ljava/lang/String;

.field public onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "phone"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 26
    new-instance v1, Lo/requireArguments$3;

    invoke-direct {v1, p0, v0, p1}, Lo/requireArguments$3;-><init>(Lo/requireArguments;Landroid/telephony/TelephonyManager;Landroid/content/Context;)V

    .line 3010
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x17

    if-lt v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 2015
    invoke-static {p1, v0}, Lo/getTitle;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 1023
    invoke-interface {v1}, Lo/getId$extraCallback;->onMessageChannelReady()V

    return-void

    .line 1025
    :cond_2
    invoke-interface {v1}, Lo/getId$extraCallback;->onNavigationEvent()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lo/requireArguments;->asInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic extraCallback(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/requireArguments$onPostMessage;
        }
    .end annotation

    .line 9
    invoke-static {p0, p1, p2}, Lo/requireArguments;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic extraCallback(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lo/requireArguments;->extraCallback:Ljava/lang/String;

    return-object p1
.end method

.method private static onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/requireArguments$onPostMessage;
        }
    .end annotation

    const-string v0, "phone"

    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 89
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 92
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 93
    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    .line 97
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 104
    :catch_0
    new-instance p0, Lo/requireArguments$onPostMessage;

    invoke-direct {p0, p1}, Lo/requireArguments$onPostMessage;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic onMessageChannelReady(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lo/requireArguments;->onPostMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic onNavigationEvent(I)I
    .locals 0

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lo/requireArguments;->ICustomTabsCallback:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic onNavigationEvent(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/requireArguments$onPostMessage;
        }
    .end annotation

    .line 9
    invoke-static {p0, p1, p2}, Lo/requireArguments;->onPostMessage(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/requireArguments;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lo/requireArguments;->onNavigationEvent:Z

    return p1
.end method

.method static synthetic onPostMessage(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lo/requireArguments;->onRelationshipValidationResult:Ljava/lang/String;

    return-object p1
.end method

.method private static onPostMessage(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/requireArguments$onPostMessage;
        }
    .end annotation

    const-string v0, "phone"

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 121
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 122
    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v4

    .line 126
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 135
    :catch_0
    new-instance p0, Lo/requireArguments$onPostMessage;

    invoke-direct {p0, p1}, Lo/requireArguments$onPostMessage;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic onPostMessage(Lo/requireArguments;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lo/requireArguments;->onMessageChannelReady:Z

    return p1
.end method
