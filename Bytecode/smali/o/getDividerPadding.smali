.class public final Lo/getDividerPadding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/applySupportImageTint;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/applySupportImageTint<",
        "Lo/setSupportImageTintList;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/dispatchFitSystemWindows;


# direct methods
.method public constructor <init>(Lo/dispatchFitSystemWindows;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/getDividerPadding;->onMessageChannelReady:Lo/dispatchFitSystemWindows;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    check-cast p1, Lo/setSupportImageTintList;

    .line 1031
    invoke-interface {p1}, Lo/setSupportImageTintList;->asBinder()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1032
    iget-object p2, p0, Lo/getDividerPadding;->onMessageChannelReady:Lo/dispatchFitSystemWindows;

    invoke-static {p1, p2}, Lo/dispatchDraw;->onPostMessage(Landroid/graphics/Bitmap;Lo/dispatchFitSystemWindows;)Lo/dispatchDraw;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic onNavigationEvent(Ljava/lang/Object;Lo/applyFrameworkTintUsingColorFilter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
