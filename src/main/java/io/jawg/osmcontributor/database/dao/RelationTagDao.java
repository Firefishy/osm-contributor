/**
 * Copyright (C) 2016 eBusiness Information
 * <p>
 * This file is part of OSM Contributor.
 * <p>
 * OSM Contributor is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * <p>
 * OSM Contributor is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * <p>
 * You should have received a copy of the GNU General Public License
 * along with OSM Contributor.  If not, see <http://www.gnu.org/licenses/>.
 */

package io.jawg.osmcontributor.database.dao;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.RuntimeExceptionDao;

import javax.inject.Inject;

import io.jawg.osmcontributor.model.entities.relation.RelationTag;

/**
 * Dao for {@link io.jawg.osmcontributor.model.entities.relation.RelationTag} objects.
 */
public class RelationTagDao extends RuntimeExceptionDao<RelationTag, Long> {

    @Inject
    public RelationTagDao(Dao<RelationTag, Long> dao) {
        super(dao);
    }
}
