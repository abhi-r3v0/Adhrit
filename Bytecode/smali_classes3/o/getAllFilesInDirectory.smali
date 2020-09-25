.class public final Lo/getAllFilesInDirectory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzgo:Lo/aY;

.field private final zzgv:Lo/aN;

.field private final zzhc:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/client/ResponseHandler;Lo/aY;Lo/aN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lo/aY;",
            "Lo/aN;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getAllFilesInDirectory;->zzhc:Lorg/apache/http/client/ResponseHandler;

    .line 3
    iput-object p2, p0, Lo/getAllFilesInDirectory;->zzgo:Lo/aY;

    .line 4
    iput-object p3, p0, Lo/getAllFilesInDirectory;->zzgv:Lo/aN;

    return-void
.end method


# virtual methods
.method public final handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lo/getAllFilesInDirectory;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/getAllFilesInDirectory;->zzgo:Lo/aY;

    invoke-virtual {v1}, Lo/aY;->onNavigationEvent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 7
    iget-object v0, p0, Lo/getAllFilesInDirectory;->zzgv:Lo/aN;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/aN;->onPostMessage(I)Lo/aN;

    .line 9
    invoke-static {p1}, Lo/extraCallback;->zza(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lo/getAllFilesInDirectory;->zzgv:Lo/aN;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/aN;->asBinder(J)Lo/aN;

    .line 13
    :cond_0
    invoke-static {p1}, Lo/extraCallback;->zza(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v1, p0, Lo/getAllFilesInDirectory;->zzgv:Lo/aN;

    invoke-virtual {v1, v0}, Lo/aN;->onPostMessage(Ljava/lang/String;)Lo/aN;

    .line 16
    :cond_1
    iget-object v0, p0, Lo/getAllFilesInDirectory;->zzgv:Lo/aN;

    invoke-virtual {v0}, Lo/aN;->asInterface()Lo/ArticleDetailActivity$2$1$1;

    .line 17
    iget-object v0, p0, Lo/getAllFilesInDirectory;->zzhc:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
