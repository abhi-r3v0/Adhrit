.class Lo/setTitle;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Z

.field private static final extraCallback:Ljava/lang/Object;

.field private static final onMessageChannelReady:Ljava/lang/Object;

.field private static onNavigationEvent:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/setTitle;->extraCallback:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/setTitle;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 6

    .line 90
    sget-object v0, Lo/setTitle;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-boolean v1, Lo/setTitle;->ICustomTabsCallback:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    .line 95
    :try_start_1
    sget-object v3, Lo/setTitle;->onNavigationEvent:Ljava/lang/reflect/Field;

    if-nez v3, :cond_2

    .line 96
    const-class v3, Landroid/app/Notification;

    const-string v4, "extras"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 97
    const-class v4, Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string p0, "NotificationCompat"

    const-string v3, "Notification.extras field is not of type Bundle"

    .line 98
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sput-boolean v1, Lo/setTitle;->ICustomTabsCallback:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 102
    :cond_1
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 103
    sput-object v3, Lo/setTitle;->onNavigationEvent:Ljava/lang/reflect/Field;

    .line 105
    :cond_2
    sget-object v3, Lo/setTitle;->onNavigationEvent:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 107
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 108
    sget-object v4, Lo/setTitle;->onNavigationEvent:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    :cond_3
    :try_start_4
    monitor-exit v0

    return-object v3

    :catch_0
    move-exception p0

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    .line 114
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    .line 112
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    :goto_0
    sput-boolean v1, Lo/setTitle;->ICustomTabsCallback:Z

    .line 117
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    .line 118
    monitor-exit v0

    throw p0
.end method

.method private static ICustomTabsCallback([Lo/setMediaUri;)[Landroid/os/Bundle;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 326
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 327
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 328
    aget-object v2, p0, v1

    invoke-static {v2}, Lo/setTitle;->onPostMessage(Lo/setMediaUri;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static onNavigationEvent(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 74
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 79
    :cond_0
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static onPostMessage(Landroid/app/Notification$Builder;Lo/setSubtitle$extraCallback;)Landroid/os/Bundle;
    .locals 3

    .line 141
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->onPostMessage()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->onNavigationEvent()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->extraCallback()Ljava/lang/CharSequence;

    move-result-object v1

    .line 145
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->onMessageChannelReady()Landroid/app/PendingIntent;

    move-result-object v2

    .line 142
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 146
    new-instance p0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->onRelationshipValidationResult()[Lo/setMediaUri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->onRelationshipValidationResult()[Lo/setMediaUri;

    move-result-object v0

    invoke-static {v0}, Lo/setTitle;->ICustomTabsCallback([Lo/setMediaUri;)[Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.remoteInputs"

    .line 148
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 151
    :cond_1
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->asInterface()[Lo/setMediaUri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->asInterface()[Lo/setMediaUri;

    move-result-object v0

    invoke-static {v0}, Lo/setTitle;->ICustomTabsCallback([Lo/setMediaUri;)[Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.dataRemoteInputs"

    .line 152
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 156
    :cond_2
    invoke-virtual {p1}, Lo/setSubtitle$extraCallback;->ICustomTabsCallback()Z

    move-result p1

    const-string v0, "android.support.allowGeneratedReplies"

    .line 155
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method private static onPostMessage(Lo/setMediaUri;)Landroid/os/Bundle;
    .locals 3

    .line 293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1116
    iget-object v1, p0, Lo/setMediaUri;->onNavigationEvent:Ljava/lang/String;

    const-string/jumbo v2, "resultKey"

    .line 294
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v1, p0, Lo/setMediaUri;->extraCallback:Ljava/lang/CharSequence;

    const-string v2, "label"

    .line 295
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1130
    iget-object v1, p0, Lo/setMediaUri;->ICustomTabsCallback:[Ljava/lang/CharSequence;

    const-string v2, "choices"

    .line 296
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 1156
    iget-boolean v1, p0, Lo/setMediaUri;->onMessageChannelReady:Z

    const-string v2, "allowFreeFormInput"

    .line 297
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1171
    iget-object v1, p0, Lo/setMediaUri;->onPostMessage:Landroid/os/Bundle;

    const-string v2, "extras"

    .line 298
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2134
    iget-object p0, p0, Lo/setMediaUri;->asInterface:Ljava/util/Set;

    if-eqz p0, :cond_1

    .line 301
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "allowedDataTypes"

    .line 306
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-object v0
.end method

.method static onPostMessage(Lo/setSubtitle$extraCallback;)Landroid/os/Bundle;
    .locals 4

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    invoke-virtual {p0}, Lo/setSubtitle$extraCallback;->onPostMessage()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->onNavigationEvent()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    invoke-virtual {p0}, Lo/setSubtitle$extraCallback;->extraCallback()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {p0}, Lo/setSubtitle$extraCallback;->onMessageChannelReady()Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "actionIntent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 260
    invoke-virtual {p0}, Lo/setSubtitle$extraCallback;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 261
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lo/setSubtitle$extraCallback;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 263
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 266
    :goto_1
    invoke-virtual {p0}, Lo/setSubtitle$extraCallback;->ICustomTabsCallback()Z

    move-result v2

    const-string v3, "android.support.allowGeneratedReplies"

    .line 265
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "extras"

    .line 267
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {p0}, Lo/setSubtitle$extraCallback;->onRelationshipValidationResult()[Lo/setMediaUri;

    move-result-object v1

    invoke-static {v1}, Lo/setTitle;->ICustomTabsCallback([Lo/setMediaUri;)[Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "remoteInputs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 269
    invoke-virtual {p0}, Lo/setSubtitle$extraCallback;->asBinder()Z

    move-result v1

    const-string/jumbo v2, "showsUserInterface"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    invoke-virtual {p0}, Lo/setSubtitle$extraCallback;->ICustomTabsCallback$Stub()I

    move-result p0

    const-string/jumbo v1, "semanticAction"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
