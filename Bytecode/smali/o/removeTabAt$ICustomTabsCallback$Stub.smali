.class final Lo/removeTabAt$ICustomTabsCallback$Stub;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeTabAt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/removeTabAt;


# direct methods
.method constructor <init>(Lo/removeTabAt;)V
    .locals 0

    iput-object p1, p0, Lo/removeTabAt$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/removeTabAt;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 42
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pi_recommendation_screen_cupi_other_options_click"

    const/4 v0, 0x0

    .line 1174
    invoke-static {p1, v0}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1175
    iget-object p1, p0, Lo/removeTabAt$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/removeTabAt;

    invoke-static {p1}, Lo/removeTabAt;->ICustomTabsCallback(Lo/removeTabAt;)V

    .line 1176
    sget-object p1, Lo/setOnItemSelectedListener;->extraCallback:Lo/setOnItemSelectedListener;

    .line 2000
    sget-object p1, Lo/setOnItemSelectedListener;->onNavigationEvent:Lo/SortedList$Callback;

    sget-object v0, Lo/setOnItemSelectedListener;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lo/SortedListAdapterCallback;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    .line 3000
    sget-object v0, Lo/setOnItemSelectedListener;->onNavigationEvent:Lo/SortedList$Callback;

    sget-object v2, Lo/setOnItemSelectedListener;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    aget-object v1, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/SortedListAdapterCallback;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 42
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
