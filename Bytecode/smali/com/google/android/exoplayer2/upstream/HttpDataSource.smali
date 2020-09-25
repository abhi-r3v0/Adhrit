.class public interface abstract Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ResultJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$ICustomTabsCallback;,
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/getAccessToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getAccessToken<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 217
    sget-object v0, Lo/WidgetJsonAdapter;->onPostMessage:Lo/WidgetJsonAdapter;

    sput-object v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource;->ICustomTabsCallback:Lo/getAccessToken;

    return-void
.end method
