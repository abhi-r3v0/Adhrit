.class public final Lo/readHeader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/readHeader$onMessageChannelReady;,
        Lo/readHeader$ICustomTabsCallback;,
        Lo/readHeader$onPostMessage;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/access$lambda$6;

.field private final arg$2:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/access$lambda$6;Z)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/readHeader;->arg$1:Lo/access$lambda$6;

    iput-boolean p2, p0, Lo/readHeader;->arg$2:Z

    return-void
.end method

.method static builder(B)Lo/readHeader$onPostMessage;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 200
    new-instance p0, Lo/readHeader$ICustomTabsCallback;

    invoke-direct {p0}, Lo/readHeader$ICustomTabsCallback;-><init>()V

    return-object p0

    .line 203
    :cond_0
    new-instance p0, Lo/readHeader$onMessageChannelReady;

    invoke-direct {p0}, Lo/readHeader$onMessageChannelReady;-><init>()V

    return-object p0
.end method

.method public static lambdaFactory$(Lo/access$lambda$6;Z)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/readHeader;

    invoke-direct {v0, p0, p1}, Lo/readHeader;-><init>(Lo/access$lambda$6;Z)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/readHeader;->arg$1:Lo/access$lambda$6;

    iget-boolean v1, p0, Lo/readHeader;->arg$2:Z

    invoke-static {v0, v1}, Lo/access$lambda$6;->lambda$getToken$1(Lo/access$lambda$6;Z)V

    return-void
.end method
