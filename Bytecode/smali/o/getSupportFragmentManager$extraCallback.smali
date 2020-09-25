.class final Lo/getSupportFragmentManager$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSupportFragmentManager;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/onPrepareOptionsPanel$onMessageChannelReady;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/SmartStatementViewModel$SmartStatementState;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getSupportFragmentManager;


# direct methods
.method constructor <init>(Lo/getSupportFragmentManager;)V
    .locals 0

    iput-object p1, p0, Lo/getSupportFragmentManager$extraCallback;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 42
    check-cast p1, Lo/onPrepareOptionsPanel$onMessageChannelReady;

    if-eqz p1, :cond_0

    .line 1074
    iget-object v0, p0, Lo/getSupportFragmentManager$extraCallback;->onNavigationEvent:Lo/getSupportFragmentManager;

    invoke-static {v0, p1}, Lo/getSupportFragmentManager;->ICustomTabsCallback(Lo/getSupportFragmentManager;Lo/onPrepareOptionsPanel$onMessageChannelReady;)V

    :cond_0
    return-void
.end method
