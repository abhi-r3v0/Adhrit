.class public abstract Lo/AppCompatMultiAutoCompleteTextView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AppCompatImageView<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/content/res/AssetManager;

.field private onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/AppCompatMultiAutoCompleteTextView;->ICustomTabsCallback:Landroid/content/res/AssetManager;

    .line 26
    iput-object p2, p0, Lo/AppCompatMultiAutoCompleteTextView;->onPostMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method protected abstract extraCallback(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final extraCallback()Lo/setImageURI;
    .locals 1

    .line 63
    sget-object v0, Lo/setImageURI;->onNavigationEvent:Lo/setImageURI;

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 1

    .line 45
    iget-object v0, p0, Lo/AppCompatMultiAutoCompleteTextView;->onNavigationEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lo/AppCompatMultiAutoCompleteTextView;->onPostMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected abstract onPostMessage(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onPostMessage(Lo/getTintList;Lo/AppCompatImageView$ICustomTabsCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getTintList;",
            "Lo/AppCompatImageView$ICustomTabsCallback<",
            "-TT;>;)V"
        }
    .end annotation

    .line 32
    :try_start_0
    iget-object p1, p0, Lo/AppCompatMultiAutoCompleteTextView;->ICustomTabsCallback:Landroid/content/res/AssetManager;

    iget-object v0, p0, Lo/AppCompatMultiAutoCompleteTextView;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lo/AppCompatMultiAutoCompleteTextView;->extraCallback(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/AppCompatMultiAutoCompleteTextView;->onNavigationEvent:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-interface {p2, p1}, Lo/AppCompatImageView$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "AssetPathFetcher"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to load data from asset manager"

    .line 35
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :cond_0
    invoke-interface {p2, p1}, Lo/AppCompatImageView$ICustomTabsCallback;->extraCallback(Ljava/lang/Exception;)V

    return-void
.end method
