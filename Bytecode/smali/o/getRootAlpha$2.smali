.class final Lo/getRootAlpha$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPageMargin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRootAlpha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPageMargin<",
        "Ljava/io/Closeable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Ljava/io/Closeable;

    .line 1113
    :try_start_0
    invoke-static {p1}, Lo/getTrimPathStart;->onMessageChannelReady(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
