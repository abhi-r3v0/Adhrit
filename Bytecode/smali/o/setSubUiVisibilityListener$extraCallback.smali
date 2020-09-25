.class public final Lo/setSubUiVisibilityListener$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSubUiVisibilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/setSubUiVisibilityListener;


# direct methods
.method public constructor <init>(Lo/setSubUiVisibilityListener;)V
    .locals 0

    iput-object p1, p0, Lo/setSubUiVisibilityListener$extraCallback;->onNavigationEvent:Lo/setSubUiVisibilityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "contacts-sdk"

    const-string v1, "db contact clear requested"

    .line 123
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lo/setSubUiVisibilityListener$extraCallback;->onNavigationEvent:Lo/setSubUiVisibilityListener;

    invoke-static {v0}, Lo/setSubUiVisibilityListener;->onMessageChannelReady(Lo/setSubUiVisibilityListener;)Lo/setOnScrollChangeListener;

    move-result-object v0

    .line 1053
    invoke-virtual {v0}, Lo/setOnScrollChangeListener;->onNavigationEvent()V

    return-void
.end method
