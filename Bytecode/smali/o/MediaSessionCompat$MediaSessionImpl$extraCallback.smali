.class final Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$MediaSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:[I

.field final extraCallback:Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;

.field final onNavigationEvent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;[I[Ljava/lang/String;)V
    .locals 0

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->extraCallback:Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;

    .line 599
    iput-object p2, p0, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->ICustomTabsCallback:[I

    .line 600
    iput-object p3, p0, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->onPostMessage:[Ljava/lang/String;

    .line 601
    array-length p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 602
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 603
    iget-object p2, p0, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->onPostMessage:[Ljava/lang/String;

    const/4 p3, 0x0

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->onNavigationEvent:Ljava/util/Set;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 606
    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->onNavigationEvent:Ljava/util/Set;

    return-void
.end method
