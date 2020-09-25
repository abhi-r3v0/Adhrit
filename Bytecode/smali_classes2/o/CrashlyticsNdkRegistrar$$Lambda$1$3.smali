.class final Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;
.super Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsNdkRegistrar$$Lambda$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback$Stub:Ljava/util/Set;

.field private synthetic asInterface:[Ljava/lang/reflect/Type;

.field private onNavigationEvent:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic onRelationshipValidationResult:Ljava/lang/reflect/Type;

.field private synthetic onTransact:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IZ[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/util/Set;)V
    .locals 9

    move-object v8, p0

    move-object/from16 v0, p7

    .line 175
    iput-object v0, v8, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->asInterface:[Ljava/lang/reflect/Type;

    move-object/from16 v0, p8

    iput-object v0, v8, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->onRelationshipValidationResult:Ljava/lang/reflect/Type;

    move-object/from16 v0, p9

    iput-object v0, v8, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->onTransact:Ljava/util/Set;

    move-object/from16 v0, p10

    iput-object v0, v8, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->ICustomTabsCallback$Stub:Ljava/util/Set;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0, p2}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 189
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->onNavigationEvent:Lo/JniNativeApi;

    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/sessionFile;Lo/JniNativeApi$onPostMessage;)V
    .locals 2

    .line 179
    invoke-super {p0, p1, p2}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->ICustomTabsCallback(Lo/sessionFile;Lo/JniNativeApi$onPostMessage;)V

    .line 181
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->asInterface:[Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->onRelationshipValidationResult:Ljava/lang/reflect/Type;

    .line 180
    invoke-static {v0, v1}, Lo/serializeSessionOs;->onNavigationEvent(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->onTransact:Ljava/util/Set;

    iget-object v1, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->ICustomTabsCallback$Stub:Ljava/util/Set;

    .line 181
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->onRelationshipValidationResult:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->ICustomTabsCallback$Stub:Ljava/util/Set;

    invoke-virtual {p1, p2, v0, v1}, Lo/sessionFile;->onMessageChannelReady(Lo/JniNativeApi$onPostMessage;Ljava/lang/reflect/Type;Ljava/util/Set;)Lo/JniNativeApi;

    move-result-object p1

    goto :goto_0

    .line 183
    :cond_0
    iget-object p2, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->onRelationshipValidationResult:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->ICustomTabsCallback$Stub:Ljava/util/Set;

    const/4 v1, 0x0

    .line 1098
    invoke-virtual {p1, p2, v0, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    .line 183
    :goto_0
    iput-object p1, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;->onNavigationEvent:Lo/JniNativeApi;

    return-void
.end method
