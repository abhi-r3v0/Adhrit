.class public final Lo/setStatementDate$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setStatementDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# static fields
.field private static final onTransact:Landroid/net/Uri;


# instance fields
.field private final ICustomTabsCallback:Landroid/content/ComponentName;

.field private final extraCallback:Z

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 61
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.gms.chimera"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lo/setStatementDate$onPostMessage;->onTransact:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Given String is empty or null"

    if-nez v0, :cond_1

    .line 6
    iput-object p1, p0, Lo/setStatementDate$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 2004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iput-object p2, p0, Lo/setStatementDate$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lo/setStatementDate$onPostMessage;->ICustomTabsCallback:Landroid/content/ComponentName;

    .line 9
    iput p3, p0, Lo/setStatementDate$onPostMessage;->onPostMessage:I

    .line 10
    iput-boolean p4, p0, Lo/setStatementDate$onPostMessage;->extraCallback:Z

    return-void

    .line 2005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final onNavigationEvent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    const-string v0, "ConnectionStatusConfig"

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    iget-object v2, p0, Lo/setStatementDate$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "serviceActionBundleKey"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v3, Lo/setStatementDate$onPostMessage;->onTransact:Landroid/net/Uri;

    const-string v4, "serviceIntentCall"

    .line 40
    invoke-virtual {p1, v3, v4, v2, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Dynamic intent resolution failed: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v2

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "serviceResponseIntentKey"

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    :goto_1
    if-nez v2, :cond_2

    const-string p1, "Dynamic lookup for intent failed for action: "

    .line 48
    iget-object v1, p0, Lo/setStatementDate$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_2
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/content/ComponentName;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/setStatementDate$onPostMessage;->ICustomTabsCallback:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lo/setStatementDate$onPostMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 55
    :cond_1
    check-cast p1, Lo/setStatementDate$onPostMessage;

    .line 56
    iget-object v1, p0, Lo/setStatementDate$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    iget-object v3, p1, Lo/setStatementDate$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_2

    .line 5001
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_8

    .line 56
    iget-object v1, p0, Lo/setStatementDate$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p1, Lo/setStatementDate$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    if-eq v1, v3, :cond_5

    if-eqz v1, :cond_4

    .line 6001
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_8

    .line 57
    iget-object v1, p0, Lo/setStatementDate$onPostMessage;->ICustomTabsCallback:Landroid/content/ComponentName;

    iget-object v3, p1, Lo/setStatementDate$onPostMessage;->ICustomTabsCallback:Landroid/content/ComponentName;

    if-eq v1, v3, :cond_7

    if-eqz v1, :cond_6

    .line 7001
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_8

    .line 58
    iget v1, p0, Lo/setStatementDate$onPostMessage;->onPostMessage:I

    iget v3, p1, Lo/setStatementDate$onPostMessage;->onPostMessage:I

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lo/setStatementDate$onPostMessage;->extraCallback:Z

    iget-boolean p1, p1, Lo/setStatementDate$onPostMessage;->extraCallback:Z

    if-ne v1, p1, :cond_8

    return v0

    :cond_8
    return v2
.end method

.method public final extraCallback(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/setStatementDate$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lo/setStatementDate$onPostMessage;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0, p1}, Lo/setStatementDate$onPostMessage;->onNavigationEvent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 32
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lo/setStatementDate$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/setStatementDate$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_1

    .line 33
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lo/setStatementDate$onPostMessage;->ICustomTabsCallback:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lo/setStatementDate$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setStatementDate$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setStatementDate$onPostMessage;->ICustomTabsCallback:Landroid/content/ComponentName;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lo/setStatementDate$onPostMessage;->onPostMessage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lo/setStatementDate$onPostMessage;->extraCallback:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 4002
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/setStatementDate$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 25
    iget v0, p0, Lo/setStatementDate$onPostMessage;->onPostMessage:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 19
    iget-object v0, p0, Lo/setStatementDate$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lo/setStatementDate$onPostMessage;->ICustomTabsCallback:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3002
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method
