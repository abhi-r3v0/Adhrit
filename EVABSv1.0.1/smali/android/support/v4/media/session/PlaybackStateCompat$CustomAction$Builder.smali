.class public final Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must specify an action to build a CustomAction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1018
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must specify a name to build a CustomAction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p3, :cond_2

    .line 1023
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must specify an icon resource id to build a CustomAction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1026
    :cond_2
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mAction:Ljava/lang/String;

    .line 1027
    iput-object p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    .line 1028
    iput p3, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mIcon:I

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .locals 5

    .line 1052
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mAction:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mIcon:I

    iget-object v4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;
    .locals 0

    .line 1041
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method
