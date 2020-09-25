.class public Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
.super Ljava/io/IOException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation


# instance fields
.field public final extraCallback:Lo/PaymentRequestJsonAdapter;

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lo/PaymentRequestJsonAdapter;I)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 261
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->extraCallback:Lo/PaymentRequestJsonAdapter;

    .line 262
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->onPostMessage:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lo/PaymentRequestJsonAdapter;I)V
    .locals 0

    .line 267
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->extraCallback:Lo/PaymentRequestJsonAdapter;

    .line 269
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->onPostMessage:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/PaymentRequestJsonAdapter;I)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 255
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->extraCallback:Lo/PaymentRequestJsonAdapter;

    .line 256
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->onPostMessage:I

    return-void
.end method
