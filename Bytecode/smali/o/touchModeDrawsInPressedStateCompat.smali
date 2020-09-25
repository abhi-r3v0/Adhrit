.class public final Lo/touchModeDrawsInPressedStateCompat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/applySupportImageTint;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/applySupportImageTint<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/touchModeDrawsInPressedStateCompat;->onMessageChannelReady:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 1035
    iget-object v0, p0, Lo/touchModeDrawsInPressedStateCompat;->onMessageChannelReady:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Landroid/os/ParcelFileDescriptor;IILo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Object;Lo/applyFrameworkTintUsingColorFilter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 2027
    iget-object p2, p0, Lo/touchModeDrawsInPressedStateCompat;->onMessageChannelReady:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->handles(Landroid/os/ParcelFileDescriptor;)Z

    move-result p1

    return p1
.end method
