.class abstract Lo/setMetadata$ICustomTabsCallback;
.super Lo/setMetadata$onMessageChannelReady;
.source ""

# interfaces
.implements Lo/setMetadata$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lo/setMetadata$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Class;)Lo/setQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/setQueue;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public onPostMessage(Ljava/lang/Class;)Lo/setQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/setQueue;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 81
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "create(String, Class<?>) must be called on implementaions of KeyedFactory"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
