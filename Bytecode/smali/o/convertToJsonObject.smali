.class public abstract Lo/convertToJsonObject;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;
.implements Lo/AFHelper;


# static fields
.field private static final extraCallback:[Ljava/lang/String;


# instance fields
.field public onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "encoded_size"

    const-string v1, "encoded_width"

    const-string v2, "encoded_height"

    const-string/jumbo v3, "uri_source"

    const-string v4, "image_format"

    const-string v5, "bitmap_config"

    .line 21
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/convertToJsonObject;->extraCallback:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/convertToJsonObject;->onPostMessage:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()I
.end method

.method public final ICustomTabsCallback$Stub()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lo/convertToJsonObject;->onPostMessage:Ljava/util/Map;

    return-object v0
.end method

.method public asBinder()Lo/AFKeystoreWrapper;
    .locals 1

    .line 48
    sget-object v0, Lo/ı;->ICustomTabsCallback:Lo/AFKeystoreWrapper;

    return-object v0
.end method

.method public abstract close()V
.end method

.method public final extraCallback(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    sget-object v0, Lo/convertToJsonObject;->extraCallback:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 70
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 72
    iget-object v5, p0, Lo/convertToJsonObject;->onPostMessage:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public extraCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lo/convertToJsonObject;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 86
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "CloseableImage"

    const-string v2, "finalize: %s %x still open."

    .line 82
    invoke-static {v1, v2, v0}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lo/convertToJsonObject;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public abstract onNavigationEvent()Z
.end method
