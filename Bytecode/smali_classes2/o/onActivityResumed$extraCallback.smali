.class public final Lo/onActivityResumed$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/b$e$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onActivityResumed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/contacts/ContactsInviteFragment$Companion;",
        "",
        "()V",
        "INVITE_FLOW_A_ENABLED",
        "",
        "PERMISSION_REQ_CODE",
        "",
        "TAG",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/OaidClient$Info;

.field private final onNavigationEvent:Lo/disk;

.field private final onPostMessage:Lo/Foreground$4$4;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/disk;Lo/OaidClient$Info;Lo/Foreground$4$4;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onActivityResumed$extraCallback;->onNavigationEvent:Lo/disk;

    iput-object p2, p0, Lo/onActivityResumed$extraCallback;->onMessageChannelReady:Lo/OaidClient$Info;

    iput-object p3, p0, Lo/onActivityResumed$extraCallback;->onPostMessage:Lo/Foreground$4$4;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 4

    .line 2000
    iget-object v0, p0, Lo/onActivityResumed$extraCallback;->onNavigationEvent:Lo/disk;

    iget-object v1, p0, Lo/onActivityResumed$extraCallback;->onMessageChannelReady:Lo/OaidClient$Info;

    iget-object v2, p0, Lo/onActivityResumed$extraCallback;->onPostMessage:Lo/Foreground$4$4;

    .line 2083
    iget-object v3, v0, Lo/disk;->onNavigationEvent:Lo/ah;

    invoke-interface {v3, v1, v2}, Lo/ah;->onMessageChannelReady(Lo/OaidClient$Info;Lo/Foreground$4$4;)Lo/markSupported;

    .line 2084
    iget-object v0, v0, Lo/disk;->ICustomTabsCallback:Lo/ai;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lo/ai;->onPostMessage(Lo/OaidClient$Info;I)V

    const/4 v0, 0x0

    return-object v0
.end method
