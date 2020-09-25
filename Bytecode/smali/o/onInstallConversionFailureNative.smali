.class public final Lo/onInstallConversionFailureNative;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:Lo/afDebugLog;

.field private ICustomTabsCallback$Stub:Lo/getVersionName;

.field private asInterface:Lo/CustomVersionedParcelable;

.field public final extraCallback:Lo/onInstallConversionDataLoadedNative;

.field private onMessageChannelReady:Lo/getVersionName;

.field public onNavigationEvent:Lo/setTitleMarginTop$ICustomTabsCallback;

.field private onPostMessage:Lo/getVersionName;

.field private onRelationshipValidationResult:Lo/AFSensorManager$4;

.field private onTransact:Lo/getTranslateY;


# direct methods
.method public constructor <init>(Lo/onInstallConversionDataLoadedNative;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    check-cast p1, Lo/onInstallConversionDataLoadedNative;

    iput-object p1, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    return-void
.end method

.method private asInterface()Lo/getVersionName;
    .locals 8

    .line 172
    iget-object v0, p0, Lo/onInstallConversionFailureNative;->onPostMessage:Lo/getVersionName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.facebook.imagepipeline.memory.AshmemMemoryChunkPool"

    .line 174
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    .line 175
    const-class v4, Lo/getPathName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lo/onAppOpenAttributionNative;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lo/onAppOpenAttribution;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 178
    iget-object v3, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 11100
    iget-object v3, v3, Lo/onInstallConversionDataLoadedNative;->onNavigationEvent:Lo/getPathName;

    aput-object v3, v2, v5

    .line 181
    iget-object v3, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 11104
    iget-object v3, v3, Lo/onInstallConversionDataLoadedNative;->ICustomTabsCallback:Lo/onAppOpenAttributionNative;

    aput-object v3, v2, v6

    .line 182
    iget-object v3, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 11108
    iget-object v3, v3, Lo/onInstallConversionDataLoadedNative;->asBinder:Lo/onAppOpenAttribution;

    aput-object v3, v2, v7

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getVersionName;

    iput-object v1, p0, Lo/onInstallConversionFailureNative;->onPostMessage:Lo/getVersionName;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    iput-object v0, p0, Lo/onInstallConversionFailureNative;->onPostMessage:Lo/getVersionName;

    goto :goto_0

    .line 191
    :catch_1
    iput-object v0, p0, Lo/onInstallConversionFailureNative;->onPostMessage:Lo/getVersionName;

    goto :goto_0

    .line 189
    :catch_2
    iput-object v0, p0, Lo/onInstallConversionFailureNative;->onPostMessage:Lo/getVersionName;

    goto :goto_0

    .line 187
    :catch_3
    iput-object v0, p0, Lo/onInstallConversionFailureNative;->onPostMessage:Lo/getVersionName;

    goto :goto_0

    .line 185
    :catch_4
    iput-object v0, p0, Lo/onInstallConversionFailureNative;->onPostMessage:Lo/getVersionName;

    .line 196
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/onInstallConversionFailureNative;->onPostMessage:Lo/getVersionName;

    return-object v0
.end method

.method private onNavigationEvent()Lo/getVersionName;
    .locals 8

    .line 96
    iget-object v0, p0, Lo/onInstallConversionFailureNative;->onMessageChannelReady:Lo/getVersionName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.facebook.imagepipeline.memory.BufferMemoryChunkPool"

    .line 98
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    .line 99
    const-class v4, Lo/getPathName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lo/onAppOpenAttributionNative;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lo/onAppOpenAttribution;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 102
    iget-object v3, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 8100
    iget-object v3, v3, Lo/onInstallConversionDataLoadedNative;->onNavigationEvent:Lo/getPathName;

    aput-object v3, v2, v5

    .line 105
    iget-object v3, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 8104
    iget-object v3, v3, Lo/onInstallConversionDataLoadedNative;->ICustomTabsCallback:Lo/onAppOpenAttributionNative;

    aput-object v3, v2, v6

    .line 106
    iget-object v3, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 8108
    iget-object v3, v3, Lo/onInstallConversionDataLoadedNative;->asBinder:Lo/onAppOpenAttribution;

    aput-object v3, v2, v7

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getVersionName;

    iput-object v1, p0, Lo/onInstallConversionFailureNative;->onMessageChannelReady:Lo/getVersionName;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    iput-object v0, p0, Lo/onInstallConversionFailureNative;->onMessageChannelReady:Lo/getVersionName;

    goto :goto_0

    .line 115
    :catch_1
    iput-object v0, p0, Lo/onInstallConversionFailureNative;->onMessageChannelReady:Lo/getVersionName;

    goto :goto_0

    .line 113
    :catch_2
    iput-object v0, p0, Lo/onInstallConversionFailureNative;->onMessageChannelReady:Lo/getVersionName;

    goto :goto_0

    .line 111
    :catch_3
    iput-object v0, p0, Lo/onInstallConversionFailureNative;->onMessageChannelReady:Lo/getVersionName;

    goto :goto_0

    .line 109
    :catch_4
    iput-object v0, p0, Lo/onInstallConversionFailureNative;->onMessageChannelReady:Lo/getVersionName;

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/onInstallConversionFailureNative;->onMessageChannelReady:Lo/getVersionName;

    return-object v0
.end method

.method private onNavigationEvent(I)Lo/getVersionName;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 251
    invoke-direct {p0}, Lo/onInstallConversionFailureNative;->asInterface()Lo/getVersionName;

    move-result-object p1

    return-object p1

    .line 253
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid MemoryChunkType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_1
    invoke-direct {p0}, Lo/onInstallConversionFailureNative;->onNavigationEvent()Lo/getVersionName;

    move-result-object p1

    return-object p1

    .line 247
    :cond_2
    invoke-direct {p0}, Lo/onInstallConversionFailureNative;->onPostMessage()Lo/getVersionName;

    move-result-object p1

    return-object p1
.end method

.method private onPostMessage()Lo/getVersionName;
    .locals 10

    const-string v0, ""

    const-string v1, "PoolFactory"

    .line 138
    iget-object v2, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback$Stub:Lo/getVersionName;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.facebook.imagepipeline.memory.NativeMemoryChunkPool"

    .line 140
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    .line 141
    const-class v6, Lo/getPathName;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lo/onAppOpenAttributionNative;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Lo/onAppOpenAttribution;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 142
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 144
    iget-object v5, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 10100
    iget-object v5, v5, Lo/onInstallConversionDataLoadedNative;->onNavigationEvent:Lo/getPathName;

    aput-object v5, v4, v7

    .line 147
    iget-object v5, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 10104
    iget-object v5, v5, Lo/onInstallConversionDataLoadedNative;->ICustomTabsCallback:Lo/onAppOpenAttributionNative;

    aput-object v5, v4, v8

    .line 148
    iget-object v5, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 10108
    iget-object v5, v5, Lo/onInstallConversionDataLoadedNative;->asBinder:Lo/onAppOpenAttribution;

    aput-object v5, v4, v9

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getVersionName;

    iput-object v3, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback$Stub:Lo/getVersionName;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 163
    invoke-static {v1, v0, v3}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    iput-object v2, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback$Stub:Lo/getVersionName;

    goto :goto_0

    :catch_1
    move-exception v3

    .line 160
    invoke-static {v1, v0, v3}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    iput-object v2, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback$Stub:Lo/getVersionName;

    goto :goto_0

    :catch_2
    move-exception v3

    .line 157
    invoke-static {v1, v0, v3}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    iput-object v2, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback$Stub:Lo/getVersionName;

    goto :goto_0

    :catch_3
    move-exception v3

    .line 154
    invoke-static {v1, v0, v3}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    iput-object v2, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback$Stub:Lo/getVersionName;

    goto :goto_0

    :catch_4
    move-exception v3

    .line 151
    invoke-static {v1, v0, v3}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    iput-object v2, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback$Stub:Lo/getVersionName;

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback$Stub:Lo/getVersionName;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getTranslateY;
    .locals 4

    .line 233
    iget-object v0, p0, Lo/onInstallConversionFailureNative;->onTransact:Lo/getTranslateY;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lo/AFVersionDeclaration;

    iget-object v1, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 13100
    iget-object v1, v1, Lo/onInstallConversionDataLoadedNative;->onNavigationEvent:Lo/getPathName;

    .line 236
    iget-object v2, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 13116
    iget-object v2, v2, Lo/onInstallConversionDataLoadedNative;->ICustomTabsCallback$Stub:Lo/onAppOpenAttributionNative;

    .line 237
    iget-object v3, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 13120
    iget-object v3, v3, Lo/onInstallConversionDataLoadedNative;->onRelationshipValidationResult:Lo/onAppOpenAttribution;

    .line 238
    invoke-direct {v0, v1, v2, v3}, Lo/AFVersionDeclaration;-><init>(Lo/getPathName;Lo/onAppOpenAttributionNative;Lo/onAppOpenAttribution;)V

    iput-object v0, p0, Lo/onInstallConversionFailureNative;->onTransact:Lo/getTranslateY;

    .line 240
    :cond_0
    iget-object v0, p0, Lo/onInstallConversionFailureNative;->onTransact:Lo/getTranslateY;

    return-object v0
.end method

.method public final extraCallback()Lo/afDebugLog;
    .locals 7

    .line 49
    iget-object v0, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback:Lo/afDebugLog;

    if-nez v0, :cond_6

    .line 50
    iget-object v0, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 2124
    iget-object v0, v0, Lo/onInstallConversionDataLoadedNative;->asInterface:Ljava/lang/String;

    const/4 v1, -0x1

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "dummy"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "dummy_with_tracking"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "experimental"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "legacy"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "legacy_default_params"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 80
    new-instance v0, Lo/AFSensorManager$2;

    iget-object v1, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 6100
    iget-object v1, v1, Lo/onInstallConversionDataLoadedNative;->onNavigationEvent:Lo/getPathName;

    .line 82
    iget-object v2, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 7092
    iget-object v2, v2, Lo/onInstallConversionDataLoadedNative;->onMessageChannelReady:Lo/onAppOpenAttributionNative;

    .line 83
    iget-object v3, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 7096
    iget-object v3, v3, Lo/onInstallConversionDataLoadedNative;->onPostMessage:Lo/onAppOpenAttribution;

    .line 85
    invoke-direct {v0, v1, v2, v3, v6}, Lo/AFSensorManager$2;-><init>(Lo/getPathName;Lo/onAppOpenAttributionNative;Lo/onAppOpenAttribution;Z)V

    iput-object v0, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback:Lo/afDebugLog;

    goto :goto_1

    .line 87
    :cond_1
    new-instance v0, Lo/AndroidUtils;

    invoke-direct {v0}, Lo/AndroidUtils;-><init>()V

    iput-object v0, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback:Lo/afDebugLog;

    goto :goto_1

    .line 69
    :cond_2
    new-instance v0, Lo/AFSensorManager$2;

    iget-object v1, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 4100
    iget-object v1, v1, Lo/onInstallConversionDataLoadedNative;->onNavigationEvent:Lo/getPathName;

    .line 72
    invoke-static {}, Lo/AFLogger$LogLevel;->extraCallback()Lo/onAppOpenAttributionNative;

    move-result-object v2

    iget-object v3, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 5096
    iget-object v3, v3, Lo/onInstallConversionDataLoadedNative;->onPostMessage:Lo/onAppOpenAttribution;

    .line 74
    invoke-direct {v0, v1, v2, v3, v6}, Lo/AFSensorManager$2;-><init>(Lo/getPathName;Lo/onAppOpenAttributionNative;Lo/onAppOpenAttribution;Z)V

    iput-object v0, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback:Lo/afDebugLog;

    goto :goto_1

    .line 59
    :cond_3
    new-instance v0, Lo/AFSensorManager$3;

    const/high16 v1, 0x400000

    .line 63
    invoke-static {}, Lo/isPermissionAvailable;->onPostMessage()Lo/isPermissionAvailable;

    move-result-object v2

    .line 65
    invoke-direct {v0, v6, v1, v2}, Lo/AFSensorManager$3;-><init>(IILo/onAppOpenAttribution;)V

    iput-object v0, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback:Lo/afDebugLog;

    goto :goto_1

    .line 56
    :cond_4
    new-instance v0, Lo/AFSensorManager$5;

    invoke-direct {v0}, Lo/AFSensorManager$5;-><init>()V

    iput-object v0, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback:Lo/afDebugLog;

    goto :goto_1

    .line 53
    :cond_5
    new-instance v0, Lo/AndroidUtils;

    invoke-direct {v0}, Lo/AndroidUtils;-><init>()V

    iput-object v0, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback:Lo/afDebugLog;

    .line 91
    :cond_6
    :goto_1
    iget-object v0, p0, Lo/onInstallConversionFailureNative;->ICustomTabsCallback:Lo/afDebugLog;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6f64eb86 -> :sswitch_4
        -0x41f50c37 -> :sswitch_3
        -0x181d2318 -> :sswitch_2
        -0x17f85147 -> :sswitch_1
        0x5b804a8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onMessageChannelReady()Lo/AFSensorManager$4;
    .locals 3

    .line 124
    iget-object v0, p0, Lo/onInstallConversionFailureNative;->onRelationshipValidationResult:Lo/AFSensorManager$4;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lo/AFSensorManager$4;

    iget-object v1, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 9100
    iget-object v1, v1, Lo/onInstallConversionDataLoadedNative;->onNavigationEvent:Lo/getPathName;

    .line 127
    iget-object v2, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 9112
    iget-object v2, v2, Lo/onInstallConversionDataLoadedNative;->extraCallback:Lo/onAppOpenAttributionNative;

    .line 127
    invoke-direct {v0, v1, v2}, Lo/AFSensorManager$4;-><init>(Lo/getPathName;Lo/onAppOpenAttributionNative;)V

    iput-object v0, p0, Lo/onInstallConversionFailureNative;->onRelationshipValidationResult:Lo/AFSensorManager$4;

    .line 129
    :cond_0
    iget-object v0, p0, Lo/onInstallConversionFailureNative;->onRelationshipValidationResult:Lo/AFSensorManager$4;

    return-object v0
.end method

.method public final onMessageChannelReady(I)Lo/CustomVersionedParcelable;
    .locals 4

    .line 205
    iget-object v0, p0, Lo/onInstallConversionFailureNative;->asInterface:Lo/CustomVersionedParcelable;

    if-nez v0, :cond_2

    .line 206
    invoke-direct {p0, p1}, Lo/onInstallConversionFailureNative;->onNavigationEvent(I)Lo/getVersionName;

    move-result-object v0

    .line 207
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to get pool for chunk type: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 209
    new-instance v0, Lo/OperationCanceledException;

    .line 211
    invoke-direct {p0, p1}, Lo/onInstallConversionFailureNative;->onNavigationEvent(I)Lo/getVersionName;

    move-result-object p1

    .line 12217
    iget-object v1, p0, Lo/onInstallConversionFailureNative;->onNavigationEvent:Lo/setTitleMarginTop$ICustomTabsCallback;

    if-nez v1, :cond_0

    .line 12218
    new-instance v1, Lo/setTitleMarginTop$ICustomTabsCallback;

    invoke-virtual {p0}, Lo/onInstallConversionFailureNative;->ICustomTabsCallback()Lo/getTranslateY;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lo/setTitleMarginTop$ICustomTabsCallback;-><init>(Lo/getTranslateY;B)V

    iput-object v1, p0, Lo/onInstallConversionFailureNative;->onNavigationEvent:Lo/setTitleMarginTop$ICustomTabsCallback;

    .line 12220
    :cond_0
    iget-object v1, p0, Lo/onInstallConversionFailureNative;->onNavigationEvent:Lo/setTitleMarginTop$ICustomTabsCallback;

    .line 211
    invoke-direct {v0, p1, v1}, Lo/OperationCanceledException;-><init>(Lo/getVersionName;Lo/setTitleMarginTop$ICustomTabsCallback;)V

    iput-object v0, p0, Lo/onInstallConversionFailureNative;->asInterface:Lo/CustomVersionedParcelable;

    goto :goto_0

    .line 11231
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_2
    :goto_0
    iget-object p1, p0, Lo/onInstallConversionFailureNative;->asInterface:Lo/CustomVersionedParcelable;

    return-object p1
.end method
