.class public abstract Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$MediaSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;->ICustomTabsCallback:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onMessageChannelReady(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
