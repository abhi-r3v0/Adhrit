.class public final Lo/newThread;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AFExecutor$1$1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/newThread$extraCallback;,
        Lo/newThread$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/newThread$onNavigationEvent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    new-instance v0, Lo/newThread$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/newThread$extraCallback;-><init>(B)V

    invoke-direct {p0, v0}, Lo/newThread;-><init>(Lo/newThread$onNavigationEvent;)V

    return-void
.end method

.method private constructor <init>(Lo/newThread$onNavigationEvent;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    check-cast p1, Lo/newThread$onNavigationEvent;

    iput-object p1, p0, Lo/newThread;->extraCallback:Lo/newThread$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/AFKeystoreWrapper;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-static {p1, v1, v0}, Lo/ı;->extraCallback(IZZ)Lo/AFKeystoreWrapper;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(I)I
    .locals 3

    .line 50
    iget-object v0, p0, Lo/newThread;->extraCallback:Lo/newThread$onNavigationEvent;

    invoke-interface {v0}, Lo/newThread$onNavigationEvent;->onNavigationEvent()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 51
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const p1, 0x7fffffff

    return p1

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method
