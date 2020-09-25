.class public Lcom/freshchat/consumer/sdk/c/k;
.super Lcom/freshchat/consumer/sdk/c/b;


# static fields
.field private static final cR:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/c/a/m;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/c/a/m;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/a/c;->cR()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/c/k;->cR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/c/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/c/k;->context:Landroid/content/Context;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "meta_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "meta_value"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_uploaded"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "meta_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_uploaded"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/k;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string/jumbo p1, "user_meta"

    const-string v2, "meta_key = ?"

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 11

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/User;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/User;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "is_uploaded = 1"

    :goto_0
    move-object v5, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "is_uploaded = 0"

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/k;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "user_meta"

    sget-object v4, Lcom/freshchat/consumer/sdk/c/k;->cR:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/k;->b(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/c/k;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_3
    const-string v2, "meta_key"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "meta_value"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "meta_type"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_4
    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v5, "fc_user_first_name"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :sswitch_1
    const-string v5, "fc_user_restore_id"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x6

    goto :goto_3

    :sswitch_2
    const-string v5, "fc_user_phone_country"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x4

    goto :goto_3

    :sswitch_3
    const-string v5, "fc_user_locale"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x7

    goto :goto_3

    :sswitch_4
    const-string v5, "fc_user_phone"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x3

    goto :goto_3

    :sswitch_5
    const-string v6, "fc_user_email"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :sswitch_6
    const-string v5, "fc_user_ext_identifier"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x5

    goto :goto_3

    :sswitch_7
    const-string v5, "fc_user_jwt_id_token"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v5, 0x8

    goto :goto_3

    :sswitch_8
    const-string v5, "fc_user_last_name"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, -0x1

    :goto_3
    packed-switch v5, :pswitch_data_0

    const-string v2, "FRESHCHAT"

    goto :goto_4

    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/freshchat/consumer/sdk/beans/User;->setJwtIdToken(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_5

    :pswitch_1
    invoke-virtual {v0, v3}, Lcom/freshchat/consumer/sdk/beans/User;->setLocale(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_5

    :pswitch_2
    invoke-virtual {v0, v3}, Lcom/freshchat/consumer/sdk/beans/User;->setRestoreId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_5

    :pswitch_3
    invoke-virtual {v0, v3}, Lcom/freshchat/consumer/sdk/beans/User;->setExternalId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_5

    :pswitch_4
    invoke-virtual {v0, v3}, Lcom/freshchat/consumer/sdk/beans/User;->setPhoneCountry(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_5

    :pswitch_5
    invoke-virtual {v0, v3}, Lcom/freshchat/consumer/sdk/beans/User;->setPhone(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_5

    :pswitch_6
    invoke-virtual {v0, v3}, Lcom/freshchat/consumer/sdk/beans/User;->setEmail(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_5

    :pswitch_7
    invoke-virtual {v0, v3}, Lcom/freshchat/consumer/sdk/beans/User;->setLastName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_5

    :pswitch_8
    invoke-virtual {v0, v3}, Lcom/freshchat/consumer/sdk/beans/User;->setFirstName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_5

    :goto_4
    const-string v3, "Unknown key from the user meta table"

    invoke-static {v2, v3}, Lcom/freshchat/consumer/sdk/j/ai;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/beans/User;->setMeta(Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_7
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/k;->c(Landroid/database/Cursor;)V

    return-object v0

    :goto_8
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/k;->c(Landroid/database/Cursor;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73169d1e -> :sswitch_8
        -0x72d8f0c1 -> :sswitch_7
        -0x60e38a07 -> :sswitch_6
        -0x4aafc916 -> :sswitch_5
        -0x4a16d744 -> :sswitch_4
        0xc58ccc -> :sswitch_3
        0x1629ab13 -> :sswitch_2
        0x3694e1de -> :sswitch_1
        0x7eee842c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/k;->d(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "meta_key"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "meta_value"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "meta_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(Lcom/freshchat/consumer/sdk/beans/User;)V
    .locals 3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "fc_user_first_name"

    invoke-virtual {p0, v2, v0, v1}, Lcom/freshchat/consumer/sdk/c/k;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getLastName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fc_user_last_name"

    invoke-virtual {p0, v2, v0, v1}, Lcom/freshchat/consumer/sdk/c/k;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fc_user_email"

    invoke-virtual {p0, v2, v0, v1}, Lcom/freshchat/consumer/sdk/c/k;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getPhone()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fc_user_phone"

    invoke-virtual {p0, v2, v0, v1}, Lcom/freshchat/consumer/sdk/c/k;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getPhoneCountry()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fc_user_phone_country"

    invoke-virtual {p0, v2, v0, v1}, Lcom/freshchat/consumer/sdk/c/k;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getExternalId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fc_user_ext_identifier"

    invoke-virtual {p0, v2, v0, v1}, Lcom/freshchat/consumer/sdk/c/k;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getRestoreId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fc_user_restore_id"

    invoke-virtual {p0, v2, v0, v1}, Lcom/freshchat/consumer/sdk/c/k;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getLocale()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fc_user_locale"

    invoke-virtual {p0, v2, v0, v1}, Lcom/freshchat/consumer/sdk/c/k;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getJwtIdToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fc_user_jwt_id_token"

    invoke-virtual {p0, v2, v0, v1}, Lcom/freshchat/consumer/sdk/c/k;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getMeta()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/freshchat/consumer/sdk/c/k;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/c/k;->b(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object p3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/k;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string/jumbo p2, "user_meta"

    const-string v4, "meta_key= ? AND meta_value!= ?"

    invoke-virtual {v0, p2, p3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/k;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v6, 0x0

    new-array v8, v3, [Ljava/lang/String;

    aput-object p1, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v5, "user_meta"

    const-string v7, "meta_key = ?"

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/k;->j(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/k;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/k;->c(Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/freshchat/consumer/sdk/beans/User;)V
    .locals 3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getMeta()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/freshchat/consumer/sdk/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fc_user_first_name"

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getLastName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fc_user_last_name"

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fc_user_email"

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getPhone()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fc_user_phone"

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getPhoneCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fc_user_phone_country"

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getExternalId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fc_user_ext_identifier"

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getRestoreId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fc_user_restore_id"

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getLocale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fc_user_locale"

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getJwtIdToken()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fc_user_jwt_id_token"

    invoke-direct {p0, v0, p1}, Lcom/freshchat/consumer/sdk/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bV()Z
    .locals 11

    const-string v3, "is_uploaded = 0"

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/k;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "user_meta"

    sget-object v2, Lcom/freshchat/consumer/sdk/c/k;->cR:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v10}, Lcom/freshchat/consumer/sdk/c/k;->c(Landroid/database/Cursor;)V

    return v9

    :goto_1
    invoke-static {v10}, Lcom/freshchat/consumer/sdk/c/k;->c(Landroid/database/Cursor;)V

    throw v0
.end method
