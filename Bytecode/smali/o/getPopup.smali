.class public final Lo/getPopup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/applySupportImageTint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPopup$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/applySupportImageTint<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 14
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1024
    new-instance p2, Lo/getPopup$onMessageChannelReady;

    invoke-direct {p2, p1}, Lo/getPopup$onMessageChannelReady;-><init>(Landroid/graphics/Bitmap;)V

    return-object p2
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
