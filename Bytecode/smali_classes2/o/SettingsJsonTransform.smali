.class public final Lo/SettingsJsonTransform;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static onMessageChannelReady:Ljava/lang/String; = "MixpanelAPI.ConfigurationChecker"

.field private static onPostMessage:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)Z
    .locals 9

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-nez p0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v2, "android.permission.INTERNET"

    .line 102
    invoke-virtual {v0, v2, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    sget-object p0, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "Package does not have permission android.permission.INTERNET"

    invoke-static {p0, v0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object p0, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "You can fix this by adding the following to your AndroidManifest.xml file:\n<uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {p0, v0}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x4

    .line 112
    :try_start_0
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_a

    .line 117
    array-length v3, v2

    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 121
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x80

    .line 123
    invoke-virtual {v0, v3, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 124
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 125
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 127
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 129
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 130
    const-class v4, Lo/getCacheDuration;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_a

    .line 137
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 141
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 143
    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v6, v2, v5

    .line 144
    iget-object v7, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 145
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 149
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_9

    .line 150
    sget-object p0, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "You can\'t have more than one service handling \"com.google.firebase.MESSAGING_EVENT\" intent filter. Android will only use the first one that is declared on your AndroidManifest.xml. If you have more than one push provider you need to crate your own FirebaseMessagingService class."

    invoke-static {p0, v1}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :try_start_2
    const-string p0, "o.setAttributes"

    .line 156
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 158
    :catch_1
    sget-object p0, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "Google Play Services aren\'t included in your build- push notifications won\'t work on Lollipop/API 21 or greater"

    invoke-static {p0, v1}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object p0, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "You can fix this by adding com.google.android.gms:play-services as a dependency of your gradle or maven project"

    invoke-static {p0, v1}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v0

    :catch_2
    :cond_a
    :goto_3
    return v1
.end method

.method public static extraCallback(Landroid/content/Context;)Z
    .locals 2

    .line 68
    sget-object v0, Lo/SettingsJsonTransform;->onPostMessage:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 71
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 72
    sput-object p0, Lo/SettingsJsonTransform;->onPostMessage:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 75
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/MiddleOutStrategy;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 81
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1

    .line 82
    sget-object p0, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lo/MiddleOutStrategy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not registered as an activity in your application, so takeover in-apps can\'t be shown."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object p0, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "Please add the child tag <activity android:name=\"com.mixpanel.android.takeoverinapp.TakeoverInAppActivity\" /> to your <application> tag."

    invoke-static {p0, v0}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 85
    sput-object p0, Lo/SettingsJsonTransform;->onPostMessage:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 88
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lo/SettingsJsonTransform;->onPostMessage:Ljava/lang/Boolean;

    .line 91
    :cond_2
    sget-object p0, Lo/SettingsJsonTransform;->onPostMessage:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static extraCallback(Ljava/util/concurrent/Future;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "Could not read referrer shared preferences."

    :try_start_0
    const-string v1, "com.android.installreferrer.api.InstallReferrerStateListener"

    .line 167
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    if-eqz p0, :cond_0

    .line 169
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    .line 170
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 179
    :catch_0
    sget-object p0, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {p0, v0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :catch_1
    sget-object p0, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {p0, v0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :catch_2
    sget-object p0, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "Missing com.android.installreferrer dependency. Google Play Store referrer information won\'t be available."

    invoke-static {p0, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onNavigationEvent(Landroid/content/Context;)Z
    .locals 3

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "android.permission.INTERNET"

    .line 57
    invoke-virtual {v0, v2, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 58
    sget-object p0, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "Package does not have permission android.permission.INTERNET - Mixpanel will not work at all!"

    invoke-static {p0, v0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object p0, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "You can fix this by adding the following to your AndroidManifest.xml file:\n<uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {p0, v0}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 54
    :cond_2
    :goto_0
    sget-object p0, Lo/SettingsJsonTransform;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "Can\'t check configuration when using a Context with null packageManager or packageName"

    invoke-static {p0, v0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
