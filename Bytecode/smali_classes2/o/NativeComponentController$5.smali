.class final Lo/NativeComponentController$5;
.super Lo/NativeComponentController;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NativeComponentController;->onNavigationEvent(Ljava/lang/reflect/Type;Lo/sessionFile;)Lo/JniNativeApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/NativeComponentController<",
        "Ljava/util/Set<",
        "TT;>;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/JniNativeApi;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lo/NativeComponentController;-><init>(Lo/JniNativeApi;B)V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    check-cast p2, Ljava/util/Set;

    invoke-super {p0, p1, p2}, Lo/NativeComponentController;->onNavigationEvent(Lo/deviceFile;Ljava/util/Collection;)V

    return-void
.end method

.method final synthetic extraCallback()Ljava/util/Collection;
    .locals 1

    .line 1065
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-super {p0, p1}, Lo/NativeComponentController;->extraCallback(Lo/SessionFiles;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
