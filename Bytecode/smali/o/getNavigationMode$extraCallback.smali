.class final Lo/getNavigationMode$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getNavigationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AppCompatImageView<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/getNavigationMode$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getNavigationMode$onPostMessage<",
            "TData;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/getNavigationMode$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/getNavigationMode$onPostMessage<",
            "TData;>;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lo/getNavigationMode$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lo/getNavigationMode$extraCallback;->extraCallback:Lo/getNavigationMode$onPostMessage;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final extraCallback()Lo/setImageURI;
    .locals 1

    .line 112
    sget-object v0, Lo/setImageURI;->onNavigationEvent:Lo/setImageURI;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lo/getNavigationMode$extraCallback;->extraCallback:Lo/getNavigationMode$onPostMessage;

    invoke-interface {v0}, Lo/getNavigationMode$onPostMessage;->onNavigationEvent()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 2

    .line 92
    :try_start_0
    iget-object v0, p0, Lo/getNavigationMode$extraCallback;->extraCallback:Lo/getNavigationMode$onPostMessage;

    iget-object v1, p0, Lo/getNavigationMode$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/getNavigationMode$onPostMessage;->onNavigationEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onPostMessage(Lo/getTintList;Lo/AppCompatImageView$ICustomTabsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getTintList;",
            "Lo/AppCompatImageView$ICustomTabsCallback<",
            "-TData;>;)V"
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object p1, p0, Lo/getNavigationMode$extraCallback;->extraCallback:Lo/getNavigationMode$onPostMessage;

    iget-object v0, p0, Lo/getNavigationMode$extraCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/getNavigationMode$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/getNavigationMode$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    .line 83
    invoke-interface {p2, p1}, Lo/AppCompatImageView$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 85
    invoke-interface {p2, p1}, Lo/AppCompatImageView$ICustomTabsCallback;->extraCallback(Ljava/lang/Exception;)V

    return-void
.end method
