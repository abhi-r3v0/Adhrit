.class public final Lo/onCreateActionView$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/willRunPredictiveAnimations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onCreateActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u001b\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000c2\u0006\u0010\t\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u0006H\u0016J\u0008\u0010\u000f\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/stringrepo/providers/DefaultProvider;",
        "Lcom/dreamplug/stringrepo/providers/StringProvider;",
        "app",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "clear",
        "",
        "get",
        "",
        "key",
        "",
        "getArray",
        "",
        "(I)[Ljava/lang/String;",
        "load",
        "refresh",
        "stringrepo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Landroid/app/Application;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onCreateActionView$onNavigationEvent;->onMessageChannelReady:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final extraCallback(I)Ljava/lang/String;
    .locals 1

    .line 1011
    iget-object v0, p0, Lo/onCreateActionView$onNavigationEvent;->onMessageChannelReady:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "app.getString(key)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(I)[Ljava/lang/String;
    .locals 1

    .line 1007
    iget-object p1, p0, Lo/onCreateActionView$onNavigationEvent;->onMessageChannelReady:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "app.resources.getStringArray(key)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
