.class final Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaControllerCompat$TransportControlsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final onMessageChannelReady:I

.field final onNavigationEvent:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(ILjava/lang/reflect/Method;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput p1, p0, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;->onMessageChannelReady:I

    .line 207
    iput-object p2, p0, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/reflect/Method;

    const/4 p1, 0x1

    .line 208
    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    check-cast p1, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;

    .line 242
    iget v2, p0, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;->onMessageChannelReady:I

    iget v3, p1, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;->onMessageChannelReady:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 247
    iget v0, p0, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;->onMessageChannelReady:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
