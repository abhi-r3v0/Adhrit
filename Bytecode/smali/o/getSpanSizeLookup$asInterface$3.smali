.class final Lo/getSpanSizeLookup$asInterface$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSpanSizeLookup$asInterface;
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
.field private synthetic ICustomTabsCallback:Lo/getSpanSizeLookup$asInterface;


# direct methods
.method constructor <init>(Lo/getSpanSizeLookup$asInterface;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanSizeLookup$asInterface$3;->ICustomTabsCallback:Lo/getSpanSizeLookup$asInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 204
    iget-object v0, p0, Lo/getSpanSizeLookup$asInterface$3;->ICustomTabsCallback:Lo/getSpanSizeLookup$asInterface;

    iget-object v0, v0, Lo/getSpanSizeLookup$asInterface;->onNavigationEvent:Lo/getSpanSizeLookup;

    invoke-static {v0}, Lo/getSpanSizeLookup;->onNavigationEvent(Lo/getSpanSizeLookup;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void
.end method
