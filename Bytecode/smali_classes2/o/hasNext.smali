.class public interface abstract Lo/hasNext;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onNavigationEvent:Lo/hasNext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lo/hasNext$4;

    invoke-direct {v0}, Lo/hasNext$4;-><init>()V

    sput-object v0, Lo/hasNext;->onNavigationEvent:Lo/hasNext;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;
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
