.class public final Lo/setMaxCardElevation;
.super Landroidx/lifecycle/LiveData;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/appendViewToAllSpans$onNavigationEvent;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003J8\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/widget/snackbar/SnackBarMessage;",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/widget/MessageSnackBar$Data;",
        "()V",
        "show",
        "",
        "data",
        "text",
        "",
        "cta",
        "listener",
        "Lcom/dreamplug/widget/MessageSnackBar$SnackBarListener;",
        "delay",
        "",
        "bgColor",
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


# static fields
.field public static final ICustomTabsCallback$Stub:Lo/setMaxCardElevation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lo/setMaxCardElevation;

    invoke-direct {v0}, Lo/setMaxCardElevation;-><init>()V

    sput-object v0, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method

.method public static synthetic onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 9

    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_0

    const-string p2, "OK"

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1

    const-wide/16 p3, 0x9c4

    :cond_1
    move-wide v4, p3

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2

    const p5, 0x7f0600fb

    const v6, 0x7f0600fb

    goto :goto_0

    :cond_2
    move v6, p5

    :goto_0
    const-string/jumbo p2, "text"

    .line 17
    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "cta"

    invoke-static {v2, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    new-instance p2, Lo/appendViewToAllSpans$onNavigationEvent;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lo/appendViewToAllSpans$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/appendViewToAllSpans$ICustomTabsCallback;JIZI)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2011
    new-instance p1, Lo/getThumbTintList;

    invoke-direct {p1, p2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
