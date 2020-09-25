.class public final Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$MediaSessionImplApi18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-boolean p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;->onMessageChannelReady:Z

    .line 274
    iput-object p2, p0, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;->extraCallback:Ljava/lang/String;

    return-void
.end method
