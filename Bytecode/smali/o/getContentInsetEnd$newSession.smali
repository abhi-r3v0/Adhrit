.class final Lo/getContentInsetEnd$newSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getContentInsetEnd;->onPostMessage(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "checkAndDismissKeyBoard"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getContentInsetEnd;


# direct methods
.method constructor <init>(Lo/getContentInsetEnd;)V
    .locals 0

    iput-object p1, p0, Lo/getContentInsetEnd$newSession;->onNavigationEvent:Lo/getContentInsetEnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Z
    .locals 3

    .line 110
    iget-object v0, p0, Lo/getContentInsetEnd$newSession;->onNavigationEvent:Lo/getContentInsetEnd;

    .line 1279
    sget-object v1, Lo/setCollapseIcon;->extraCallback:Lo/setCollapseIcon;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Lo/getContentInsetEnd;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/setCollapseIcon;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    iget-object v0, v0, Lo/getContentInsetEnd;->extraCallback:Lo/getMaxEnd;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
