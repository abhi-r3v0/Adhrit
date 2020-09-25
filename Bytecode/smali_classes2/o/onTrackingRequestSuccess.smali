.class public final Lo/onTrackingRequestSuccess;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MultipleInstallBroadcastReceiver;


# static fields
.field static final ICustomTabsCallback:Ljava/lang/String;

.field private static ICustomTabsCallback$Stub:Ljava/lang/String;

.field private static final asInterface:Ljava/lang/String;

.field public static final extraCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/isEnableLog;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/onTrackingRequestSuccess;


# instance fields
.field final onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "hts/frbslgiggolai.o/0clgbthfra=snpoo"

    const-string v1, "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3"

    .line 1
    invoke-static {v0, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/onTrackingRequestSuccess;->ICustomTabsCallback:Ljava/lang/String;

    const-string v0, "hts/frbslgigp.ogepscmv/ieo/eaybtho"

    const-string v1, "tp:/ieaeogn-agolai.o/1frlglgc/aclg"

    .line 2
    invoke-static {v0, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/onTrackingRequestSuccess;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const-string v0, "AzSCki82AwsLzKd5O8zo"

    const-string v1, "IayckHiZRO1EFl1aGoK"

    .line 3
    invoke-static {v0, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/onTrackingRequestSuccess;->asInterface:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/isEnableLog;

    .line 1030
    new-instance v2, Lo/isEnableLog;

    const-string v3, "proto"

    invoke-direct {v2, v3}, Lo/isEnableLog;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2030
    new-instance v2, Lo/isEnableLog;

    const-string v3, "json"

    invoke-direct {v2, v3}, Lo/isEnableLog;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lo/onTrackingRequestSuccess;->extraCallback:Ljava/util/Set;

    .line 7
    new-instance v0, Lo/onTrackingRequestSuccess;

    sget-object v1, Lo/onTrackingRequestSuccess;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/onTrackingRequestSuccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lo/onTrackingRequestSuccess;

    sget-object v1, Lo/onTrackingRequestSuccess;->ICustomTabsCallback$Stub:Ljava/lang/String;

    sget-object v2, Lo/onTrackingRequestSuccess;->asInterface:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/onTrackingRequestSuccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/onTrackingRequestSuccess;->onPostMessage:Lo/onTrackingRequestSuccess;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/onTrackingRequestSuccess;->onMessageChannelReady:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/onTrackingRequestSuccess;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "cct"

    return-object v0
.end method

.method public final extraCallback()[B
    .locals 3

    .line 3001
    iget-object v0, p0, Lo/onTrackingRequestSuccess;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/onTrackingRequestSuccess;->onMessageChannelReady:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "1$"

    aput-object v2, v0, v1

    .line 3002
    iget-object v1, p0, Lo/onTrackingRequestSuccess;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "\\"

    aput-object v2, v0, v1

    .line 3003
    iget-object v1, p0, Lo/onTrackingRequestSuccess;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%s%s%s%s"

    .line 3004
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 3005
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/isEnableLog;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lo/onTrackingRequestSuccess;->extraCallback:Ljava/util/Set;

    return-object v0
.end method
