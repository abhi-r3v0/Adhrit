.class public abstract Lo/setGravity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ListPopupWindow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ListPopupWindow<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private extraCallback:Lo/getNextLocationOffset;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public extraCallback()V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onPostMessage()Lo/getNextLocationOffset;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/setGravity;->extraCallback:Lo/getNextLocationOffset;

    return-object v0
.end method

.method public onPostMessage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onPostMessage(Lo/getNextLocationOffset;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/setGravity;->extraCallback:Lo/getNextLocationOffset;

    return-void
.end method
