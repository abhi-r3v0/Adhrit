.class final synthetic Lo/Image;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getText3;


# static fields
.field static final onMessageChannelReady:Lo/getText3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Image;

    invoke-direct {v0}, Lo/Image;-><init>()V

    sput-object v0, Lo/Image;->onMessageChannelReady:Lo/getText3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lo/CtasJsonAdapter;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
