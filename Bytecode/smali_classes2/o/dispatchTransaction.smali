.class final synthetic Lo/dispatchTransaction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zzwe;


# static fields
.field static final onMessageChannelReady:Lo/zzwe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/dispatchTransaction;

    invoke-direct {v0}, Lo/dispatchTransaction;-><init>()V

    sput-object v0, Lo/dispatchTransaction;->onMessageChannelReady:Lo/zzwe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
