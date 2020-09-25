.class public interface abstract Lo/shouldIncludeGetter;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final extraCallback:Lo/shouldIncludeGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lo/shouldIncludeGetter$4;

    invoke-direct {v0}, Lo/shouldIncludeGetter$4;-><init>()V

    sput-object v0, Lo/shouldIncludeGetter;->extraCallback:Lo/shouldIncludeGetter;

    return-void
.end method


# virtual methods
.method public abstract onPostMessage(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
