.class Lo/DatabaseRegistrar$extraCallback;
.super Lo/DatabaseRegistrar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DatabaseRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 336
    invoke-direct {p0}, Lo/DatabaseRegistrar;-><init>()V

    .line 337
    iput-object p1, p0, Lo/DatabaseRegistrar$extraCallback;->onMessageChannelReady:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 2

    .line 341
    iget-object v0, p0, Lo/DatabaseRegistrar$extraCallback;->onMessageChannelReady:Ljava/lang/Class;

    const-string v1, "context"

    invoke-static {p1, v0, v1}, Lo/DatabaseRegistrar$extraCallback;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 343
    :cond_0
    const-class v0, Ljavax/net/ssl/X509TrustManager;

    const-string v1, "trustManager"

    invoke-static {p1, v0, v1}, Lo/DatabaseRegistrar$extraCallback;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    return-object p1
.end method
