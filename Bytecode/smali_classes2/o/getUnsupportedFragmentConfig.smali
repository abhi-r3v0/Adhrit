.class abstract Lo/getUnsupportedFragmentConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:[Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    .line 2
    sput-object v0, Lo/getUnsupportedFragmentConfig;->onMessageChannelReady:[Ljava/lang/Throwable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
.end method
