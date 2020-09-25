.class abstract Lo/getSessionAppSize;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/getBinaryImageSize$ICustomTabsCallback<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback(Lo/attemptUploadWithRetry;Ljava/lang/Object;Lo/writeSessionEventDevice;Lo/getBinaryImageSize;Ljava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/attemptUploadWithRetry;",
            "Ljava/lang/Object;",
            "Lo/writeSessionEventDevice;",
            "Lo/getBinaryImageSize<",
            "TT;>;TUB;",
            "Lo/SessionReport<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract ICustomTabsCallback(Lo/writeSessionEventDevice;Lo/WireFormat$FieldType$2;I)Ljava/lang/Object;
.end method

.method abstract ICustomTabsCallback(Ljava/lang/Object;)V
.end method

.method abstract ICustomTabsCallback(Lo/WireFormat$FieldType$2;)Z
.end method

.method abstract extraCallback(Lo/sendReport;Ljava/util/Map$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/sendReport;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;)Lo/getBinaryImageSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/getBinaryImageSize<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Lo/SessionProtobufHelper;Ljava/lang/Object;Lo/writeSessionEventDevice;Lo/getBinaryImageSize;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SessionProtobufHelper;",
            "Ljava/lang/Object;",
            "Lo/writeSessionEventDevice;",
            "Lo/getBinaryImageSize<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract onPostMessage(Ljava/util/Map$Entry;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation
.end method

.method abstract onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/getBinaryImageSize<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract onPostMessage(Lo/attemptUploadWithRetry;Ljava/lang/Object;Lo/writeSessionEventDevice;Lo/getBinaryImageSize;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/attemptUploadWithRetry;",
            "Ljava/lang/Object;",
            "Lo/writeSessionEventDevice;",
            "Lo/getBinaryImageSize<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
