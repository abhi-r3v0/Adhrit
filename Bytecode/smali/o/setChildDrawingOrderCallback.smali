.class public final Lo/setChildDrawingOrderCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B#\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00018\u0000\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u0006J&\u0010\u0008\u001a\u0004\u0018\u00018\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000cH\u0086\u0002\u00a2\u0006\u0002\u0010\rJ&\u0010\u0008\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000cH\u0086\u0002\u00a2\u0006\u0002\u0010\u0010J\u0019\u0010\u0011\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0002\u0010\u0012R\u0012\u0010\u0005\u001a\u0004\u0018\u00018\u0000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0012\u0010\u0004\u001a\u0004\u0018\u00018\u0000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0012\u0010\u0003\u001a\u0004\u0018\u00018\u0000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerDelegate;",
        "T",
        "",
        "defaultValue",
        "beforeValue",
        "afterValue",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "getValue",
        "response",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "property",
        "Lkotlin/reflect/KProperty;",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;Lkotlin/reflect/KProperty;)Ljava/lang/Object;",
        "timer",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;Lkotlin/reflect/KProperty;)Ljava/lang/Object;",
        "getValueByTimer",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;)Ljava/lang/Object;",
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
.field private final extraCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setChildDrawingOrderCallback;->onPostMessage:Ljava/lang/Object;

    iput-object p2, p0, Lo/setChildDrawingOrderCallback;->onNavigationEvent:Ljava/lang/Object;

    iput-object p3, p0, Lo/setChildDrawingOrderCallback;->extraCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;",
            ")TT;"
        }
    .end annotation

    .line 22
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object p1, p0, Lo/setChildDrawingOrderCallback;->onPostMessage:Ljava/lang/Object;

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 1279
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->extraCallback:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-string v2, "Calendar.getInstance()"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 25
    iget-object p1, p0, Lo/setChildDrawingOrderCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/setChildDrawingOrderCallback;->onPostMessage:Ljava/lang/Object;

    return-object p1

    .line 27
    :cond_2
    iget-object p1, p0, Lo/setChildDrawingOrderCallback;->extraCallback:Ljava/lang/Object;

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/setChildDrawingOrderCallback;->onPostMessage:Ljava/lang/Object;

    :cond_3
    return-object p1
.end method
