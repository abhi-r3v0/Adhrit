.class final Lo/setWeightSum$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setWeightSum$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setWeightSum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lcom/bumptech/glide/Glide;Lo/setMeasureWithLargestChildEnabled;Lo/MediaSessionCompat$1$onMessageChannelReady;Landroid/content/Context;)Lo/AppCompatImageButton;
    .locals 1

    .line 490
    new-instance v0, Lo/AppCompatImageButton;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/AppCompatImageButton;-><init>(Lcom/bumptech/glide/Glide;Lo/setMeasureWithLargestChildEnabled;Lo/MediaSessionCompat$1$onMessageChannelReady;Landroid/content/Context;)V

    return-object v0
.end method
