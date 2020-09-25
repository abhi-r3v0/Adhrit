.class final Lo/setIconified$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setIconified;->onNavigationEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setIconified;

.field private synthetic onPostMessage:[S


# direct methods
.method constructor <init>(Lo/setIconified;[S)V
    .locals 0

    .line 249
    iput-object p1, p0, Lo/setIconified$3;->extraCallback:Lo/setIconified;

    iput-object p2, p0, Lo/setIconified$3;->onPostMessage:[S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 252
    iget-object v0, p0, Lo/setIconified$3;->extraCallback:Lo/setIconified;

    iget-object v1, p0, Lo/setIconified$3;->onPostMessage:[S

    .line 1093
    iget-object v2, v0, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v3, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    .line 2029
    iget-boolean v2, v2, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    const-string v4, "Writerun Called"

    if-eqz v2, :cond_0

    .line 2030
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2032
    :cond_0
    sget-object v2, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1098
    :try_start_0
    iget-boolean v4, v0, Lo/setIconified;->asBinder:Z

    if-eqz v4, :cond_e

    .line 1099
    iget-object v4, v0, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v5, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    const-string v6, "Looping..."

    .line 2061
    iget-boolean v4, v4, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v4, :cond_2

    .line 2062
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2064
    :cond_2
    sget-object v4, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1101
    :goto_1
    iget-object v4, v0, Lo/setIconified;->ICustomTabsCallback:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "Error!!! Unable to write audio data"

    const/4 v6, -0x2

    const/4 v7, -0x3

    const-string v8, "Audio Track not initialized.."

    if-eqz v4, :cond_5

    .line 1102
    :try_start_1
    iget-object v4, v0, Lo/setIconified;->ICustomTabsCallback:Landroid/media/AudioTrack;

    array-length v9, v1

    invoke-virtual {v4, v1, v3, v9}, Landroid/media/AudioTrack;->write([SII)I

    move-result v4

    if-eq v4, v7, :cond_3

    if-ne v4, v6, :cond_7

    .line 1105
    :cond_3
    iget-object v4, v0, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v9, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    .line 3029
    iget-boolean v4, v4, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v4, :cond_4

    .line 3030
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3032
    :cond_4
    sget-object v4, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v9, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1106
    :goto_2
    iput-boolean v3, v0, Lo/setIconified;->asBinder:Z

    goto :goto_4

    .line 1109
    :cond_5
    iget-object v4, v0, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v9, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    .line 4029
    iget-boolean v4, v4, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v4, :cond_6

    .line 4030
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4032
    :cond_6
    sget-object v4, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v9, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1110
    :goto_3
    iput-boolean v3, v0, Lo/setIconified;->asBinder:Z

    .line 1117
    :cond_7
    :goto_4
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 1118
    iget v9, v0, Lo/setIconified;->asInterface:I

    invoke-virtual {v4, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 1119
    iget v9, v0, Lo/setIconified;->ICustomTabsCallback$Stub:I

    add-int/2addr v9, v4

    .line 1120
    new-array v4, v9, [S

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_8

    .line 1122
    sget-object v11, Lo/clearFocus;->getInterfaceDescriptor:[D

    .line 1129
    aput-short v3, v4, v10

    add-int/lit8 v10, v10, 0x1

    .line 1121
    sget v11, Lo/clearFocus;->postMessage:I

    add-int/2addr v11, v2

    sput v11, Lo/clearFocus;->postMessage:I

    goto :goto_5

    .line 1133
    :cond_8
    iget-object v10, v0, Lo/setIconified;->ICustomTabsCallback:Landroid/media/AudioTrack;

    if-eqz v10, :cond_b

    .line 1134
    iget-object v8, v0, Lo/setIconified;->ICustomTabsCallback:Landroid/media/AudioTrack;

    invoke-virtual {v8, v4, v3, v9}, Landroid/media/AudioTrack;->write([SII)I

    move-result v4

    if-eq v4, v7, :cond_9

    if-ne v4, v6, :cond_d

    .line 1137
    :cond_9
    iget-object v4, v0, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v6, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    .line 5029
    iget-boolean v4, v4, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v4, :cond_a

    .line 5030
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5032
    :cond_a
    sget-object v4, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1138
    :goto_6
    iput-boolean v3, v0, Lo/setIconified;->asBinder:Z

    goto :goto_8

    .line 1141
    :cond_b
    iget-object v4, v0, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v5, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    .line 6029
    iget-boolean v4, v4, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v4, :cond_c

    .line 6030
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 6032
    :cond_c
    sget-object v4, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1142
    :goto_7
    iput-boolean v3, v0, Lo/setIconified;->asBinder:Z

    .line 1145
    :cond_d
    :goto_8
    iget-object v4, v0, Lo/setIconified;->extraCallback:Lo/setIconified$onMessageChannelReady;

    if-eqz v4, :cond_1

    .line 1146
    iget-object v4, v0, Lo/setIconified;->extraCallback:Lo/setIconified$onMessageChannelReady;

    invoke-interface {v4}, Lo/setIconified$onMessageChannelReady;->onNavigationEvent()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_e
    return-void

    :catch_0
    move-exception v1

    .line 1150
    iget-object v4, v0, Lo/setIconified;->onRelationshipValidationResult:Lo/setOnSuggestionListener;

    sget-object v5, Lo/setIconified;->onPostMessage:Ljava/lang/String;

    .line 7010
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 7011
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 7012
    invoke-virtual {v1, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 7013
    invoke-virtual {v6}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7061
    iget-boolean v2, v4, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v2, :cond_f

    .line 7062
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 7064
    :cond_f
    sget-object v2, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1151
    :goto_9
    iput-boolean v3, v0, Lo/setIconified;->asBinder:Z

    return-void
.end method
