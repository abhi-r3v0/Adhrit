.class public Lo/setIconified;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSuggestionsAdapter;
.implements Lo/setSubmitButtonEnabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setIconified$onMessageChannelReady;
    }
.end annotation


# static fields
.field static final onPostMessage:Ljava/lang/String;


# instance fields
.field ICustomTabsCallback:Landroid/media/AudioTrack;

.field ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/Thread;

.field asBinder:Z

.field asInterface:I

.field extraCallback:Lo/setIconified$onMessageChannelReady;

.field private getInterfaceDescriptor:Ljava/lang/String;

.field private newSession:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/isSubmitButtonEnabled;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:I

.field onNavigationEvent:Lo/isIconfiedByDefault;

.field onRelationshipValidationResult:Lo/setOnSuggestionListener;

.field private onTransact:Lo/clearFocus;

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lo/setIconified;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/clearFocus;III)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lo/setIconified;->getInterfaceDescriptor:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lo/setIconified;->onMessageChannelReady:I

    .line 37
    iget v1, p0, Lo/setIconified;->warmup:I

    div-int/lit8 v2, v1, 0x8

    iput v2, p0, Lo/setIconified;->ICustomTabsCallback$Stub:I

    .line 38
    div-int/lit8 v1, v1, 0x14

    iput v1, p0, Lo/setIconified;->asInterface:I

    .line 88
    iput-boolean v0, p0, Lo/setIconified;->asBinder:Z

    .line 42
    invoke-static {}, Lo/setOnSuggestionListener;->onNavigationEvent()Lo/setOnSuggestionListener;

    move-result-object v0

    iput-object v0, p0, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    .line 43
    iput-object p1, p0, Lo/setIconified;->onTransact:Lo/clearFocus;

    .line 44
    iput p2, p0, Lo/setIconified;->warmup:I

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/setIconified;->newSession:Ljava/util/ArrayList;

    .line 47
    iput p3, p0, Lo/setIconified;->ICustomTabsCallback$Stub:I

    .line 48
    iput p4, p0, Lo/setIconified;->asInterface:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/isSubmitButtonEnabled;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lo/setIconified;->newSession:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 311
    iget-object v2, p0, Lo/setIconified;->newSession:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/isSubmitButtonEnabled;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lo/setIconified;->newSession:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3

    .line 68
    sget-object v0, Lo/isIconfiedByDefault;->onPostMessage:Lo/isIconfiedByDefault;

    iput-object v0, p0, Lo/setIconified;->onNavigationEvent:Lo/isIconfiedByDefault;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lo/setIconified;->onMessageChannelReady:I

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iput-boolean v0, p0, Lo/setIconified;->asBinder:Z

    .line 72
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lo/setIconified;->ICustomTabsCallback:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lo/setIconified;->ICustomTabsCallback:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v1, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    const-string v2, "Stopping"

    .line 1029
    iget-boolean v0, v0, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 1030
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1032
    :cond_0
    sget-object v0, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 79
    :goto_0
    iget-object v0, p0, Lo/setIconified;->ICustomTabsCallback:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 81
    :cond_1
    iget-object v0, p0, Lo/setIconified;->ICustomTabsCallback:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lo/setIconified;->ICustomTabsCallback:Landroid/media/AudioTrack;

    .line 84
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-virtual {p0}, Lo/setIconified;->onPostMessage()V

    return-void

    :catchall_0
    move-exception v0

    .line 84
    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    .line 72
    monitor-exit p0

    throw v0
.end method

.method public final onNavigationEvent(I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 191
    iput v0, v1, Lo/setIconified;->onMessageChannelReady:I

    .line 192
    new-instance v0, Lo/setIconified$1;

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lo/setIconified$1;-><init>(Lo/setIconified;I)V

    iput-object v0, v1, Lo/setIconified;->extraCallback:Lo/setIconified$onMessageChannelReady;

    .line 203
    iget-object v0, v1, Lo/setIconified;->getInterfaceDescriptor:Ljava/lang/String;

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 206
    iget-object v4, v1, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v5, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PaddedInput:Input"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2029
    iget-boolean v4, v4, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v4, :cond_0

    .line 2030
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2032
    :cond_0
    sget-object v4, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2052
    :goto_0
    :try_start_0
    iget-object v5, v1, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v6, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    const-string v7, "Modulator:getModulatedSamples input:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3029
    iget-boolean v5, v5, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v5, :cond_1

    .line 3030
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3032
    :cond_1
    sget-object v5, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2053
    :goto_1
    iget-object v5, v1, Lo/setIconified;->onTransact:Lo/clearFocus;

    .line 3335
    iget-object v6, v5, Lo/clearFocus;->newSession:Lo/setOnSuggestionListener;

    sget-object v7, Lo/clearFocus;->ICustomTabsCallback:Ljava/lang/String;

    const-string v8, "getAlphaNumEncodedPacketInShort input:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4029
    iget-boolean v6, v6, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v6, :cond_2

    .line 4030
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4032
    :cond_2
    sget-object v6, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3336
    :goto_2
    iget-object v6, v5, Lo/clearFocus;->onPostMessage:Lo/setSearchableInfo;

    invoke-interface {v6, v0}, Lo/setSearchableInfo;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3337
    iget-object v6, v5, Lo/clearFocus;->newSession:Lo/setOnSuggestionListener;

    sget-object v7, Lo/clearFocus;->ICustomTabsCallback:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Input:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " EncInp:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5029
    iget-boolean v6, v6, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v6, :cond_3

    .line 5030
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5032
    :cond_3
    sget-object v6, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3338
    :goto_3
    iget-object v0, v5, Lo/clearFocus;->newSession:Lo/setOnSuggestionListener;

    sget-object v6, Lo/clearFocus;->ICustomTabsCallback:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "EncInpLength:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6029
    iget-boolean v0, v0, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v0, :cond_4

    .line 6030
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 6032
    :cond_4
    sget-object v0, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3339
    :goto_4
    iget-object v10, v5, Lo/clearFocus;->onNavigationEvent:[Z

    iget v11, v5, Lo/clearFocus;->ICustomTabsService:I

    iget v12, v5, Lo/clearFocus;->ICustomTabsCallback$Stub$Proxy:I

    iget-object v0, v5, Lo/clearFocus;->onMessageChannelReady:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 6048
    iget-object v13, v0, Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;->ICustomTabsCallback:[[D

    .line 3341
    iget-object v0, v5, Lo/clearFocus;->onRelationshipValidationResult:Lo/preload;

    .line 7030
    iget-object v14, v0, Lo/preload;->onNavigationEvent:[D

    .line 3341
    iget-object v0, v5, Lo/clearFocus;->ICustomTabsCallback$Stub:Lo/preload;

    .line 8030
    iget-object v15, v0, Lo/preload;->onNavigationEvent:[D

    .line 3342
    iget v0, v5, Lo/clearFocus;->warmup:I

    iget v6, v5, Lo/clearFocus;->asBinder:I

    iget-object v7, v5, Lo/clearFocus;->extraCallback:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 8048
    iget-object v7, v7, Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;->ICustomTabsCallback:[[D

    .line 3343
    iget-object v8, v5, Lo/clearFocus;->onTransact:Lo/preload;

    .line 9030
    iget-object v8, v8, Lo/preload;->onNavigationEvent:[D

    .line 3344
    iget-object v4, v5, Lo/clearFocus;->asInterface:Lo/preload;

    .line 10030
    iget-object v4, v4, Lo/preload;->onNavigationEvent:[D

    move-object/from16 v19, v8

    move-object v8, v5

    move/from16 v16, v0

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v4

    .line 3339
    invoke-virtual/range {v8 .. v20}, Lo/clearFocus;->ICustomTabsCallback(Ljava/lang/String;[ZII[[D[D[DII[[D[D[D)[S

    move-result-object v0

    .line 3345
    iget-object v4, v5, Lo/clearFocus;->newSession:Lo/setOnSuggestionListener;

    sget-object v5, Lo/clearFocus;->ICustomTabsCallback:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DataSize:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 11029
    iget-boolean v4, v4, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v4, :cond_5

    .line 11030
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 11032
    :cond_5
    sget-object v4, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 211
    iget-object v4, v1, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v5, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    .line 12010
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 12011
    new-instance v7, Ljava/io/PrintWriter;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 12012
    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 12013
    invoke-virtual {v6}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 12061
    iget-boolean v4, v4, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v4, :cond_6

    .line 12062
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 12064
    :cond_6
    sget-object v4, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 212
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/util/InputMismatchException;

    if-eq v4, v5, :cond_d

    const/4 v0, 0x0

    :goto_6
    move-object v4, v0

    .line 218
    iget-object v0, v1, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v5, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Time taken in generating one cycle:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13029
    iget-boolean v0, v0, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v0, :cond_7

    .line 13030
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 13032
    :cond_7
    sget-object v0, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 224
    :goto_7
    iget v0, v1, Lo/setIconified;->warmup:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    .line 227
    iget-object v0, v1, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v5, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "BUFFER SIZE="

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14029
    iget-boolean v0, v0, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v0, :cond_8

    .line 14030
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 14032
    :cond_8
    sget-object v0, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 230
    :goto_8
    :try_start_1
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v8, 0x3

    iget v9, v1, Lo/setIconified;->warmup:I

    const/4 v10, 0x4

    const/4 v11, 0x2

    array-length v5, v4

    const/4 v6, 0x1

    shl-int/lit8 v12, v5, 0x1

    const/4 v13, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, v1, Lo/setIconified;->ICustomTabsCallback:Landroid/media/AudioTrack;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    .line 235
    iget-object v5, v1, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v6, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    .line 15010
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 15011
    new-instance v8, Ljava/io/PrintWriter;

    const/4 v9, 0x1

    invoke-direct {v8, v7, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 15012
    invoke-virtual {v0, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 15013
    invoke-virtual {v7}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15061
    iget-boolean v5, v5, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v5, :cond_9

    .line 15062
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 15064
    :cond_9
    sget-object v5, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 236
    :goto_9
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v8, 0x3

    iget v9, v1, Lo/setIconified;->warmup:I

    const/4 v10, 0x4

    const/4 v11, 0x2

    shl-int/lit8 v12, v2, 0x2

    const/4 v13, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, v1, Lo/setIconified;->ICustomTabsCallback:Landroid/media/AudioTrack;

    .line 241
    :goto_a
    iget-object v0, v1, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v2, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    const-string v3, "Audio Track Generated!!!"

    .line 16029
    iget-boolean v0, v0, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v0, :cond_a

    .line 16030
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 16032
    :cond_a
    sget-object v0, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 243
    :goto_b
    iget-object v0, v1, Lo/setIconified;->ICustomTabsCallback:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 245
    monitor-enter p0

    .line 246
    :try_start_2
    iget-object v0, v1, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v2, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    const-string v3, "Play:Inside Synchonized Starting readrun thread"

    .line 17029
    iget-boolean v0, v0, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v0, :cond_b

    .line 17030
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    const/4 v2, 0x1

    goto :goto_d

    .line 17032
    :cond_b
    sget-object v0, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_c

    .line 247
    :goto_d
    iput-boolean v2, v1, Lo/setIconified;->asBinder:Z

    .line 249
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lo/setIconified$3;

    invoke-direct {v2, v1, v4}, Lo/setIconified$3;-><init>(Lo/setIconified;[S)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, v1, Lo/setIconified;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Thread;

    .line 256
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 257
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    iget-object v0, v1, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v2, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    const-string v3, "Audio is playing in BG"

    .line 18029
    iget-boolean v0, v0, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v0, :cond_c

    .line 18030
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 18032
    :cond_c
    sget-object v0, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 257
    monitor-exit p0

    throw v0

    .line 214
    :cond_d
    throw v0
.end method

.method public final onPostMessage()V
    .locals 5

    .line 286
    iget-object v0, p0, Lo/setIconified;->newSession:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 287
    iget-object v1, p0, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v2, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Modulator:Notify Observer Called..numObs:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19029
    iget-boolean v1, v1, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v1, :cond_0

    .line 19030
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 19032
    :cond_0
    sget-object v1, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 289
    iget-object v2, p0, Lo/setIconified;->newSession:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/isSubmitButtonEnabled;

    iget-object v3, p0, Lo/setIconified;->onNavigationEvent:Lo/isIconfiedByDefault;

    invoke-interface {v2, v3, p0}, Lo/isSubmitButtonEnabled;->onMessageChannelReady(Lo/isIconfiedByDefault;Lo/setSubmitButtonEnabled;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lo/setIconified;->getInterfaceDescriptor:Ljava/lang/String;

    return-void
.end method
