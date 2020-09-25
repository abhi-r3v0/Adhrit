.class final Lo/findViewHolderForItemId$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onServiceConnected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findViewHolderForItemId;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/onServiceConnected<",
        "TX;TY;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "progress",
        "apply",
        "(Ljava/lang/Double;)Ljava/lang/Double;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/findViewHolderForItemId;


# direct methods
.method constructor <init>(Lo/findViewHolderForItemId;)V
    .locals 0

    iput-object p1, p0, Lo/findViewHolderForItemId$onNavigationEvent;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 25
    check-cast p1, Ljava/lang/Double;

    if-nez p1, :cond_0

    .line 1061
    iget-object v0, p0, Lo/findViewHolderForItemId$onNavigationEvent;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-virtual {v0}, Lo/findViewHolderForItemId;->onPostMessage()Ljava/util/Map;

    move-result-object v0

    const-string v1, "slots_loading_prefetch_failed"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1062
    iget-object v0, p0, Lo/findViewHolderForItemId$onNavigationEvent;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v0}, Lo/findViewHolderForItemId;->asBinder(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/throwIfInMutationOperation;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1063
    sget-object v3, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    const-string v4, "Something went wrong, please try again in sometime."

    invoke-static/range {v3 .. v9}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_0

    .line 1064
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    .line 1065
    iget-object v0, p0, Lo/findViewHolderForItemId$onNavigationEvent;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-virtual {v0}, Lo/findViewHolderForItemId;->onPostMessage()Ljava/util/Map;

    move-result-object v0

    const-string v1, "slots_loading_screen_complete"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1066
    iget-object v0, p0, Lo/findViewHolderForItemId$onNavigationEvent;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v0}, Lo/findViewHolderForItemId;->ICustomTabsCallback(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/findChildViewUnder$onNavigationEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lo/findChildViewUnder$onNavigationEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object p1
.end method
