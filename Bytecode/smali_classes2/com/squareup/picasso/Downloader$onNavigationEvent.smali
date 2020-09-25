.class public final Lcom/squareup/picasso/Downloader$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/io/InputStream;

.field public final onNavigationEvent:Z

.field public final onPostMessage:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ZJ)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 119
    iput-object p1, p0, Lcom/squareup/picasso/Downloader$onNavigationEvent;->ICustomTabsCallback:Ljava/io/InputStream;

    .line 121
    iput-boolean p2, p0, Lcom/squareup/picasso/Downloader$onNavigationEvent;->onNavigationEvent:Z

    .line 122
    iput-wide p3, p0, Lcom/squareup/picasso/Downloader$onNavigationEvent;->onPostMessage:J

    return-void

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
