.class public final Lo/getNavigationContentDescription;
.super Lo/ensureLogoView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ensureLogoView<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0008J\r\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/helper/sharedpref/SharedPrefLongDelegate;",
        "Lcom/dreamplug/androidapp/helper/sharedpref/SharedPrefDelegate;",
        "",
        "pref",
        "Lcom/dreamplug/androidapp/helper/sharedpref/SharedPrefWrapper;",
        "key",
        "",
        "defaultValue",
        "(Lcom/dreamplug/androidapp/helper/sharedpref/SharedPrefWrapper;Ljava/lang/String;J)V",
        "initializeValue",
        "()Ljava/lang/Long;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/setCollapseContentDescription;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "pref"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lo/ensureLogoView;-><init>(Lo/setCollapseContentDescription;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage()Ljava/lang/Object;
    .locals 7

    .line 1045
    invoke-virtual {p0}, Lo/getNavigationContentDescription;->onNavigationEvent()Lo/setCollapseContentDescription;

    move-result-object v0

    .line 2012
    iget-object v0, v0, Lo/setCollapseContentDescription;->onNavigationEvent:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v1, "prefrences"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lo/getNavigationContentDescription;->extraCallback()Ljava/lang/String;

    move-result-object v1

    .line 3010
    iget-object v2, p0, Lo/ensureLogoView;->onPostMessage:Ljava/lang/Object;

    .line 1054
    const-class v3, Ljava/lang/Long;

    invoke-static {v3}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v3

    .line 1055
    const-class v4, Ljava/lang/String;

    invoke-static {v4}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v4

    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v2, v5

    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto/16 :goto_3

    .line 1056
    :cond_2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v4

    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, -0x1

    if-eqz v4, :cond_5

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_3

    move-object v2, v5

    :cond_3
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v6

    :cond_4
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto/16 :goto_3

    .line 1057
    :cond_5
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v4

    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    instance-of v3, v2, Ljava/lang/Boolean;

    if-nez v3, :cond_6

    move-object v2, v5

    :cond_6
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto/16 :goto_3

    .line 1058
    :cond_8
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v4

    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    instance-of v3, v2, Ljava/lang/Float;

    if-nez v3, :cond_9

    move-object v2, v5

    :cond_9
    check-cast v2, Ljava/lang/Float;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_a
    const/high16 v2, -0x40800000    # -1.0f

    :goto_1
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_3

    .line 1059
    :cond_b
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v4

    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_c

    move-object v2, v5

    :cond_c
    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_d
    const-wide/16 v2, -0x1

    :goto_2
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    .line 1060
    :cond_e
    const-class v4, Ljava/util/Set;

    invoke-static {v4}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v4

    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    instance-of v3, v2, Ljava/util/Set;

    if-nez v3, :cond_f

    move-object v2, v5

    :cond_f
    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_10
    check-cast v2, Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_3
    if-nez v0, :cond_11

    .line 1054
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_11
    return-object v0

    .line 1061
    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
