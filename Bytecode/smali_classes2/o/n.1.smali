.class public final Lo/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onPostMessage:[Ljava/lang/String;


# direct methods
.method public static onMessageChannelReady(Ljava/net/URI;Landroid/content/Context;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "firebase_performance_whitelisted_domains"

    const-string v2, "array"

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_4

    .line 6
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object v2

    const-string v3, "Detected domain whitelist, only whitelisted domains will be measured."

    .line 7
    invoke-virtual {v2, v3}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    .line 8
    sget-object v2, Lo/n;->onPostMessage:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lo/n;->onPostMessage:[Ljava/lang/String;

    .line 10
    :cond_0
    sget-object p1, Lo/n;->onPostMessage:[Ljava/lang/String;

    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    .line 11
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 12
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method
