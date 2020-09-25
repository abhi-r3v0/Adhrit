.class public final Lcom/squareup/okhttp/internal/http/RouteException;
.super Ljava/lang/Exception;
.source ""


# static fields
.field public static final onNavigationEvent:Ljava/lang/reflect/Method;


# instance fields
.field public extraCallback:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    sput-object v0, Lcom/squareup/okhttp/internal/http/RouteException;->onNavigationEvent:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 41
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RouteException;->extraCallback:Ljava/io/IOException;

    return-void
.end method
