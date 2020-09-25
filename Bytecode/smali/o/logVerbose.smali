.class public final Lo/logVerbose;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/logVerbose;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field extraCallback:I

.field onMessageChannelReady:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 19
    iput v0, p0, Lo/logVerbose;->ICustomTabsCallback:I

    const v0, 0x7fffffff

    .line 20
    iput v0, p0, Lo/logVerbose;->extraCallback:I

    .line 25
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lo/logVerbose;->onMessageChannelReady:Landroid/graphics/Bitmap$Config;

    return-void
.end method
